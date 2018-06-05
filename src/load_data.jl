


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
