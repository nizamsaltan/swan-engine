cmake_minimum_required(VERSION 3.16.3)

project(Gazelle)

include_directories("include")
set( SOURCE
        "src/main.cpp"
        src/cube_vertices.h src/engine/camera.h src/engine/ui/EngineUI.cpp src/engine/ui/EngineUI.h src/engine/ui/imgui_style.h src/engine/FrameBuffer.cpp src/engine/FrameBuffer.h)

set( LIB "lib/glad.c" )

set( INCLUDE "include/" )
include_directories(${INCLUDE})

set( IMGUI ${INCLUDE}/imgui/imgui.cpp 
        ${INCLUDE}/imgui/imgui_demo.cpp 
        ${INCLUDE}/imgui/imgui_draw.cpp
        ${INCLUDE}/imgui/imgui_tables.cpp
        ${INCLUDE}/imgui/imgui_widgets.cpp

        ${INCLUDE}/imgui/backends/imgui_impl_glfw.cpp
        ${INCLUDE}/imgui/backends/imgui_impl_opengl3.cpp
        )

add_executable(${PROJECT_NAME} ${LIB} ${SOURCE} ${IMGUI})

target_link_libraries(${PROJECT_NAME} GL dl glfw)


set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -Wall")
find_package(OpenGL REQUIRED)
add_definitions(${OPENGL_DEFINITIONS})
find_package(X11 REQUIRED)
# note that the order is important for setting the libs
# use pkg-config --libs $(pkg-config --print-requires --print-requires-private glfw3) in a terminal to confirm
set(LIBS ${GLFW3_LIBRARY} X11 Xrandr Xinerama Xi Xxf86vm Xcursor GL dl pthread freetype ${ASSIMP_LIBRARY})
set (CMAKE_CXX_LINK_EXECUTABLE "${CMAKE_CXX_LINK_EXECUTABLE} -ldl")