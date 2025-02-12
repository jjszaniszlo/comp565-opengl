include(FetchContent)

FetchContent_Declare(glad GIT_REPOSITORY https://github.com/Dav1dde/glad.git)

FetchContent_GetProperties(glad)
if(NOT glad_POPULATED)
    FetchContent_Populate(glad)

    set(GLAD_PROFILE
        "core"
        CACHE STRING "OpenGL profile")
    set(GLAD_API
        "gl=3.3"
        CACHE
            STRING
            "API type/version pairs, like \"gl=3.2,gles=\", no version means latest"
    )
    set(GLAD_GENERATOR
        "c"
        CACHE STRING "Language to generate the binding for")
    add_subdirectory(${glad_SOURCE_DIR} ${glad_BINARY_DIR})
endif()
