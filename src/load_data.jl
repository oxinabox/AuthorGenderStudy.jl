const BUFFER_SIZE = 2^12


function extract_data(line)
    data = JSON.parse(line)
    @NT(
        authors = [author["name"] for author in data["authors"]],
        paper_abstract = data["paperAbstract"]
    )
end


function load_data(datadir = datadep"Open Research Corpus")
    Channel(ctype=Any, csize=BUFFER_SIZE) do ch
        @sync for fn in glob("*.gz", datadir)
            @async for line in eachline(ZlibInflateInputStream(open(fn)))
                put!(ch, extract_data(line))
            end
        end
    end

end



function preprocess_data(data = load_data())
    Channel(ctype=Any, csize=BUFFER_SIZE) do ch
        for datum in data
            (length(datum.authors)==0 || length(datum.paper_abstract)==0) && continue

            firstnames = first.(split.(datum.authors, " "; limit=2, keep=false))
            author_genders = classify_gender.(firstnames)

            # Skip papers that are not all written by authors of the same gender
            # or whos gender we could not clearly identify 
            any(ismissing.(author_genders))  && continue
            first_author_gender = author_genders[1]
            MostlyMale <= first_author_gender <= MostlyFemale && continue
            any(author_genders .!== first_author_gender) && continue

            abstract_sents = tokenize.(split_sentences(datum.paper_abstract))

            paper_abstract = intern.(reduce(vcat, abstract_sents))
            put!(ch, @NT(author_gender=first_author_gender,
                         paper_abstract=paper_abstract))
        end
    end
end


