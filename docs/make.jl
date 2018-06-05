using Documenter, AuthorGenderStudy

makedocs(;
    modules=[AuthorGenderStudy],
    format=:html,
    pages=[
        "Home" => "index.md",
    ],
    repo="https://github.com/oxinabox/AuthorGenderStudy.jl/blob/{commit}{path}#L{line}",
    sitename="AuthorGenderStudy.jl",
    authors="Lyndon White (aka oxinabox)",
    assets=[],
)

deploydocs(;
    repo="github.com/oxinabox/AuthorGenderStudy.jl",
    target="build",
    julia="0.6",
    deps=nothing,
    make=nothing,
)
