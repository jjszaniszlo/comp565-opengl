cmake_minimum_required(VERSION 3.30)
cmake_policy(VERSION 3.10)
cmake_policy(SET CMP0169 OLD)

project(glfw_opengl_setup)

set(CMAKE_CXX_STANDARD 20)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")
include(AddGLFW)
include(AddGlad)
include(AddLinMath)

add_executable(glfw_opengl_setup src/main.cpp)
target_link_libraries(glfw_opengl_setup PRIVATE glfw glad linmath)

add_subdirectory(tests)