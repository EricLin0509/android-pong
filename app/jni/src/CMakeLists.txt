cmake_minimum_required(VERSION 3.6)

project(my_app)

if(NOT TARGET SDL3::SDL3)
    find_package(SDL3 CONFIG REQUIRED)
    find_package(SDL3_ttf REQUIRED CONFIG)
endif()

add_library(main SHARED
    ../game/ball.c
    ../game/paddle.c
    ../game/snow.c
    ../game/text.c
    ../game/main.c
)
target_link_libraries(main PRIVATE SDL3::SDL3)
target_link_libraries(yourgame PRIVATE SDL3_ttf::SDL3_ttf)
