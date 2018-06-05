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

function __init__()
    include("init_datadeps.jl")
end


export load_data, preprocess_data

include("load_data.jl")

end
