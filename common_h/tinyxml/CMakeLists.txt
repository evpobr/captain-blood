project(tinyxml)

add_library(tinyxml
    tinystr.cpp
    tinystr.h
    tinyxml.cpp
    tinyxml.h
    tinyxmlerror.cpp
    tinyxmlparser.cpp
)
target_include_directories(tinyxml PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
add_library(tinyxml::tinyxml ALIAS tinyxml)
