#__precompile__()
module AuthorGenderStudy

using Libz
using JSON
using Glob
using DataDeps
using NamedTuples
using InternedStrings
using NameToGender
using WordTokenizers
using Missings

function __init__()
    include("init_datadeps.jl")
end


export load_data

include("load_data.jl")

end
