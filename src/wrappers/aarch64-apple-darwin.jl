# Autogenerated wrapper script for JpegTurbo_jll for aarch64-apple-darwin
export cjpeg, djpeg, jpegtran, libjpeg, libturbojpeg

JLLWrappers.@generate_wrapper_header("JpegTurbo")
JLLWrappers.@declare_library_product(libjpeg, "@rpath/libjpeg.62.dylib")
JLLWrappers.@declare_library_product(libturbojpeg, "@rpath/libturbojpeg.0.dylib")
JLLWrappers.@declare_executable_product(cjpeg)
JLLWrappers.@declare_executable_product(djpeg)
JLLWrappers.@declare_executable_product(jpegtran)
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libjpeg,
        "lib/libjpeg.62.4.0.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libturbojpeg,
        "lib/libturbojpeg.0.4.0.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        cjpeg,
        "bin/cjpeg",
    )

    JLLWrappers.@init_executable_product(
        djpeg,
        "bin/djpeg",
    )

    JLLWrappers.@init_executable_product(
        jpegtran,
        "bin/jpegtran",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
