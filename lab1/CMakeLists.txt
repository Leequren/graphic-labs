cmake_minimum_required(VERSION 3.10)
project(lab1)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Находим пакет OpenGL
find_package(OpenGL REQUIRED)

# Находим пакет GLFW
find_package(glfw3 3.3 REQUIRED)
find_package(GLEW REQUIRED)

file(GLOB UTILS_SOURCES "utils/*.cpp")

add_executable(lab1
    main.cpp
    ${UTILS_SOURCES}
)

target_link_libraries(lab1 ${OPENGL_gl_LIBRARY} glfw GLEW::GLEW)

add_custom_target(run
    COMMAND lab1
    DEPENDS lab1
    WORKING_DIRECTORY ${CMAKE_PROJECT_DIR}
)
