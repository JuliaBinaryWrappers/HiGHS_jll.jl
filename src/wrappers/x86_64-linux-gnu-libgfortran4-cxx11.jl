# Autogenerated wrapper script for HiGHS_jll for x86_64-linux-gnu-libgfortran4-cxx11
export libhighs

using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("HiGHS")
JLLWrappers.@declare_library_product(libhighs, "libhighs.so")
function __init__()
    JLLWrappers.@generate_init_header(CompilerSupportLibraries_jll)
    JLLWrappers.@init_library_product(
        libhighs,
        "lib/libhighs.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
