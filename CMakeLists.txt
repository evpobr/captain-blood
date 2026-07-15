cmake_minimum_required(VERSION 3.20)

project(CaptainBlood)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

set(PhysX_ROOT ${CMAKE_SOURCE_DIR}/ThirdParty/PhysX_281/SDKs)
find_package(PhysX REQUIRED)

find_package(dxsdk-d3dx CONFIG REQUIRED)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})

add_subdirectory(ThirdParty/sdk_baseclasses)
add_subdirectory(Physics)
add_subdirectory(ArcadeSea)
add_subdirectory(common_h/tinyxml)
add_subdirectory(Game)
add_subdirectory(Particles)
add_subdirectory(Character)
add_subdirectory(System)
add_subdirectory(ENGINE)
