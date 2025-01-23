cmake_minimum_required(VERSION 3.30)
cmake_policy(VERSION 3.10)
cmake_policy(SET CMP0169 OLD)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}../cmake")
include(AddGTest)

# build test executable here when needed