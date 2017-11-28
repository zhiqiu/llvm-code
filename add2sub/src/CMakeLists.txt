add_library(add2sub MODULE
    # List your source files here.
    main.cpp
)
SET(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/lib)

# Use C++11 to compile our pass (i.e., supply -std=c++11).
#target_cddompile_features(hello PRIVATE cxx_range_for cxx_auto_type)
SET(CMAKE_CXX_FLAGS "-std=c++11")
# LLVM is (typically) built with no C++ RTTI. We need to match that;
# otherwise, we'll get linker errors about missing RTTI data.

#SET(CMAKE_FLAGS "-fno-rtti")
set_target_properties(add2sub PROPERTIES
    COMPILE_FLAGS "-fno-rtti"
)




