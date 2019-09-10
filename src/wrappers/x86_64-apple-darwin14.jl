# Autogenerated wrapper script for JpegTurbo_jll for x86_64-apple-darwin14
export cjpeg, jpegtran, libturbojpeg, libjpeg, djpeg

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "DYLD_FALLBACK_LIBRARY_PATH"

# Relative path to `cjpeg`
const cjpeg_splitpath = ["bin", "cjpeg"]

# This will be filled out by __init__() for all products, as it must be done at runtime
cjpeg_path = ""

# cjpeg-specific global declaration
function cjpeg(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(ENV["PATH"], ':', PATH)
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(ENV[LIBPATH_env], ':', LIBPATH)
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(cjpeg_path)
    end
end


# Relative path to `jpegtran`
const jpegtran_splitpath = ["bin", "jpegtran"]

# This will be filled out by __init__() for all products, as it must be done at runtime
jpegtran_path = ""

# jpegtran-specific global declaration
function jpegtran(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(ENV["PATH"], ':', PATH)
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(ENV[LIBPATH_env], ':', LIBPATH)
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(jpegtran_path)
    end
end


# Relative path to `libturbojpeg`
const libturbojpeg_splitpath = ["lib", "libturbojpeg.0.2.0.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libturbojpeg_path = ""

# libturbojpeg-specific global declaration
# This will be filled out by __init__()
libturbojpeg_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libturbojpeg = "@rpath/libturbojpeg.0.dylib"


# Relative path to `libjpeg`
const libjpeg_splitpath = ["lib", "libjpeg.62.3.0.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libjpeg_path = ""

# libjpeg-specific global declaration
# This will be filled out by __init__()
libjpeg_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libjpeg = "@rpath/libjpeg.62.dylib"


# Relative path to `djpeg`
const djpeg_splitpath = ["bin", "djpeg"]

# This will be filled out by __init__() for all products, as it must be done at runtime
djpeg_path = ""

# djpeg-specific global declaration
function djpeg(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(ENV["PATH"], ':', PATH)
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(ENV[LIBPATH_env], ':', LIBPATH)
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(djpeg_path)
    end
end


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global cjpeg_path = abspath(joinpath(artifact"JpegTurbo", cjpeg_splitpath...))

    push!(PATH_list, dirname(cjpeg_path))
    global jpegtran_path = abspath(joinpath(artifact"JpegTurbo", jpegtran_splitpath...))

    push!(PATH_list, dirname(jpegtran_path))
    global libturbojpeg_path = abspath(joinpath(artifact"JpegTurbo", libturbojpeg_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libturbojpeg_handle = dlopen(libturbojpeg_path)
    push!(LIBPATH_list, dirname(libturbojpeg_path))

    global libjpeg_path = abspath(joinpath(artifact"JpegTurbo", libjpeg_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libjpeg_handle = dlopen(libjpeg_path)
    push!(LIBPATH_list, dirname(libjpeg_path))

    global djpeg_path = abspath(joinpath(artifact"JpegTurbo", djpeg_splitpath...))

    push!(PATH_list, dirname(djpeg_path))
    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

