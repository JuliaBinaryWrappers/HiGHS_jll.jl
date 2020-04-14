# Autogenerated wrapper script for HiGHS_jll for armv7l-linux-gnueabihf-libgfortran5-cxx11
export libipx, libhighs

using CompilerSupportLibraries_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libipx`
const libipx_splitpath = ["lib", "libipx.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libipx_path = ""

# libipx-specific global declaration
# This will be filled out by __init__()
libipx_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libipx = "libipx.so"


# Relative path to `libhighs`
const libhighs_splitpath = ["lib", "libhighs.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libhighs_path = ""

# libhighs-specific global declaration
# This will be filled out by __init__()
libhighs_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libhighs = "libhighs.so.1.0"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"HiGHS")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (CompilerSupportLibraries_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (CompilerSupportLibraries_jll.LIBPATH_list,))

    global libipx_path = normpath(joinpath(artifact_dir, libipx_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libipx_handle = dlopen(libipx_path)
    push!(LIBPATH_list, dirname(libipx_path))

    global libhighs_path = normpath(joinpath(artifact_dir, libhighs_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libhighs_handle = dlopen(libhighs_path)
    push!(LIBPATH_list, dirname(libhighs_path))

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

