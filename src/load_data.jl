


function extract_data(line)
    data = JSON.parse(line)
    @NT(
        authors = [author["name"] for author in data["authors"]],
        paper_abstract = data["paperAbstract"]
    )
end


function load_data(datadir = datadep"Open Research Corpus")
    Channel(ctype=Any, csize=2^12) do ch


        @sync for fn in glob("*.gz", datadir)
            @async for line in eachline(ZlibInflateInputStream(open(fn)))
                put!(ch, extract_data(line))
            end
        end
    end

end



function preprocess_data(data)
    Channel(ctype=Any, csize=2^12) do ch
        for datum in data
            (length(datum.authors)==0 || length(datum.paper_abstract)==0) && @goto next_datum

            author_genders = GenderUsage[]
            for author in datum.authors
                firstname = first(split(author, " "; limit=2, keep=false))
                length(firstname) <= 2 && @goto next_datum
                try
                    push!(author_genders, classify_gender(firstname))
                catch err
                    err isa KeyError || rethrow()
                    @goto next_datum
                end
            end
                
            abstract_sents = tokenize.(split_sentences(datum.paper_abstract))

            paper_abstract = intern.(foldl(vcat, abstract_sents))
            put!(ch, @NT(authors=datum.authors,
                         author_genders=author_genders,
                         paper_abstract=paper_abstract))
            @label next_datum
        end
    end
end


