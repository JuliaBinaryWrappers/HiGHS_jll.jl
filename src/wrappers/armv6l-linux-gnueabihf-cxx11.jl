# Autogenerated wrapper script for HiGHS_jll for armv6l-linux-gnueabihf-cxx11
export highs, libhighs

using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("HiGHS")
JLLWrappers.@declare_library_product(libhighs, "libhighs.so")
JLLWrappers.@declare_executable_product(highs)
function __init__()
    JLLWrappers.@generate_init_header(CompilerSupportLibraries_jll)
    JLLWrappers.@init_library_product(
        libhighs,
        "lib/libhighs.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        highs,
        "bin/highs",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()