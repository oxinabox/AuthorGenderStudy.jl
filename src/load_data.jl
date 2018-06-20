const BUFFER_SIZE = 2^6


function load_data(datadir = datadep"Open Research Corpus")
    function extract_data(line)
        data = JSON.parse(line)
        @NT(
            authors = [author["name"] for author in data["authors"]],
            paper_abstract = data["paperAbstract"]
        )
    end

    function process_file(ch, fn)
        for line in eachline(ZlibInflateInputStream(open(fn)))
            datum = extract_data(line)

            #println(datum.authors)
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

            paper_abstract = String.(reduce(vcat, abstract_sents))
            put!(ch, @NT(author_gender=first_author_gender,
                         paper_abstract=paper_abstract))

        end
    end

    ##################
    # Actual function 

    local_ch = Channel{Any}(BUFFER_SIZE)
    remote_ch = RemoteChannel(()->local_ch)

    c_pool = CachingPool(workers())
    filenames = glob("*.gz", datadir)
    file_dones = remotecall.(process_file, c_pool, remote_ch, filenames)
    

    # schedule the following to occur at some point on the local worker
    @schedule begin # Close off the channel once all files are done
        for file_done in file_dones
            wait(file_done)
        end # wait for all of them
        close(local_ch)
        clear!(c_pool)
    end

    return local_ch
end


function preprocess_data(data = load_data())
    Channel(ctype=Any, csize=BUFFER_SIZE) do ch
        for datum in data
       end
    end
end


