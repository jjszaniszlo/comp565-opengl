cmake_minimum_required(VERSION 3.30)
cmake_policy(VERSION 3.10)
cmake_policy(SET CMP0169 OLD)

project(glfw_opengl_setup)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

include(AddGLFW)
include(AddGlad)
include(AddLinMath)
include(CompilerOptions)
include(C++Standards)
include(Formatting)

cxx_20()

file(
    GLOB_RECURSE
    ALL_CODE_FILES
    ${PROJECT_SOURCE_DIR}/src/*.[ch]pp
    ${PROJECT_SOURCE_DIR}/src/*.[ch]
    ${PROJECT_SOURCE_DIR}/include/*.[h]pp
    ${PROJECT_SOURCE_DIR}/include/*.[h]
    ${PROJECT_SOURCE_DIR}/example/*.[ch]pp
    ${PROJECT_SOURCE_DIR}/example/*.[ch])

clang_format(format ${ALL_CODE_FILES})

file(GLOB_RECURSE CMAKE_FILES ${PROJECT_SOURCE_DIR}/cmake/*.cmake
     CMakeLists.txt)

cmake_format(cmake_format ${CMAKE_FILES})

add_executable(glfw_opengl_setup src/main.cpp)
target_link_libraries(glfw_opengl_setup PRIVATE glfw glad linmath)

add_subdirectory(tests)
