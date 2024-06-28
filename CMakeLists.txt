cmake_minimum_required(VERSION 3.20)

# taken from https://github.com/adobe/imgui/blob/master/CMakeLists.txt
project(imgui)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED True)

option(IMGUI_USE_DARK_THEME "Use Dark ImGui Spectrum Theme" OFF)
option(IMGUI_DEFINE_MATH_OPERATORS "Enable ImGui ImVec2/ImVec4 operators" OFF)
option(IMGUI_BUILD_EXAMPLES "" OFF)

add_library(imgui STATIC
    imgui.cpp
    imgui_demo.cpp
    imgui_draw.cpp
    imgui_tables.cpp
    imgui_widgets.cpp
    backends/imgui_impl_glfw.cpp
    backends/imgui_impl_opengl3.cpp
)

target_include_directories(imgui PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/include
    ${CMAKE_CURRENT_SOURCE_DIR}/backends
)

find_package(OpenGL REQUIRED)
find_package(glfw3 REQUIRED)

target_link_libraries(imgui PUBLIC glfw OpenGL::GL)

if(IMGUI_BUILD_EXAMPLES)
    add_executable(imgui_example
        "examples/example_glfw_opengl3/main.cpp")
    target_link_libraries(imgui_example PRIVATE imgui)
    target_include_directories(imgui_example PRIVATE "backends/")
    find_package(OpenGL REQUIRED)
    if(TARGET OpenGL::OpenGL)
        target_link_libraries(imgui_example PRIVATE OpenGL::OpenGL)
    else()
        target_link_libraries(imgui_example PRIVATE OpenGL::GL)
    endif()
endif()
