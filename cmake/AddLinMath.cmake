FetchContent_Declare(linmath
                     GIT_REPOSITORY https://github.com/datenwolf/linmath.h.git)

FetchContent_GetProperties(linmath)
if(NOT linmath_POPULATED)
    FetchContent_Populate(linmath)
    add_library(linmath INTERFACE)
    target_include_directories(linmath INTERFACE ${linmath_SOURCE_DIR})
endif()
