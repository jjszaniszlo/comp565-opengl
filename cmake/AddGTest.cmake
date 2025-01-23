include(FetchContent)

FetchContent_Declare(
	googletest
	GIT_REPOSITORY https://github.com/google/googletest.git
	GIT_TAG	       release-1.11.0
)

FetchContent_GetProperties(googletest)

if(NOT googletest_POPULATED)
	FetchContent_Populate(googletest)
	add_library(GTest::GTest INTERFACE IMPORTED)
	target_link_libraries(GTest::GTest INTERFACE gtest_main)
endif()