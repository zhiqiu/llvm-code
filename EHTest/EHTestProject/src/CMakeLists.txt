add_executable(EHTest
# List your source files here.
				main.cpp
				Record.cpp
)
#SET(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/a)



# Use C++11 to compile our pass (i.e., supply -std=c++11).
#target_cddompile_features(hello PRIVATE cxx_range_for cxx_auto_type)
SET(CMAKE_CXX_FLAGS "-std=c++11 -O0")
#SET(CMAKE_CXX_FLAGS "-D__STDC_CONSTANT_MACROS -D__STDC_LIMIT_MACROS")
# LLVM is (typically) built with no C++ RTTI. We need to match that;
# otherwise, we'll get linker errors about missing RTTI data.

#SET(CMAKE_FLAGS "-fno-rtti")
set_target_properties(EHTest PROPERTIES
					COMPILE_FLAGS "-fno-rtti"
							)
#llvm-config --components 查看所有lib名字
llvm_map_components_to_libnames(LIBS  
	core
	irreader
	mcjit
	bitwriter
	interpreter
	x86codegen
	target
)

message(STATUS "lib = ${LIBS}")
target_link_libraries(EHTest ${LIBS})
