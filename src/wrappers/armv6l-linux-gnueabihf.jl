# Autogenerated wrapper script for JpegTurbo_jll for armv6l-linux-gnueabihf
export cjpeg, djpeg, jpegtran, libjpeg, libturbojpeg

JLLWrappers.@generate_wrapper_header("JpegTurbo")
JLLWrappers.@declare_executable_product(cjpeg)
JLLWrappers.@declare_executable_product(djpeg)
JLLWrappers.@declare_executable_product(jpegtran)
JLLWrappers.@declare_library_product(libjpeg, "libjpeg.so.62")
JLLWrappers.@declare_library_product(libturbojpeg, "libturbojpeg.so.0")
function __init__()
    JLLWrappers.@generate_init_header()
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

    JLLWrappers.@init_library_product(
        libjpeg,
        "lib/libjpeg.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libturbojpeg,
        "lib/libturbojpeg.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()