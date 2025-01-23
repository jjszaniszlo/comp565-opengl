include(FetchContent)

FetchContent_Declare(
    Catch2
    GIT_REPOSITORY https://github.com/catchorg/Catch2.git
    GIT_TAG v3.4.0 # or a later release
)

FetchContent_GetProperties(Catch2)
if(NOT Catch2_POPULATED)
    FetchContent_MakeAvailable(Catch2)
endif()
