project(lineToInfo)
cmake_minimum_required(VERSION 3.1)
find_path (LLVM_DIR LLVMConfig.cmake
			/home/chenql/program/llvm-3.4.1/build/share/llvm/cmake
			)
message(STATUS "LLVM_DIR = ${LLVM_DIR}")
find_package(LLVM REQUIRED CONFIG)
add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})
link_directories( ${LLVM_LIBRARY_DIRS} )
# Now build our tools

# Find the libraries that correspond to the LLVM components
# that we wish to use
#llvm_map_components_to_libnames(llvm_libs support core irreader)

# Link against LLVM libraries
#target_link_libraries(getInst ${llvm_libs})

message(STATUS "LLVM_DEFINITIONS = ${LLVM_DEFINITIONS}")
message(STATUS "LLVM_INCLUDE_DIR = ${LLVM_INCLUDE_DIRS}")
message(STATUS "LLVM_LINK_DIR = ${LLVM_LIBRARY_DIRS}")
add_subdirectory(src)  # Use your pass name here.


