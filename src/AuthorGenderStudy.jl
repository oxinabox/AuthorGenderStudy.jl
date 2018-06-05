#__precompile__()
module AuthorGenderStudy

using Libz
using JSON
using Glob
using DataDeps
using NamedTuples

function __init__()
    include("init_datadeps.jl")
end

include("load_data.jl")

end
