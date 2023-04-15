cmake_minimum_required(VERSION 3.16.3)

project(SwanEngine)

set( SOURCE
        src/main.cpp
        src/Global.h
        src/cube_vertices.h
        src/engine/FrameBuffer.cpp
        src/engine/FrameBuffer.h
        src/engine/components/Mesh.h
        src/engine/components/Model.h
        src/engine/TextureLoader.cpp
        src/engine/TextureLoader.h
        src/engine/ui/EngineUI.cpp
        src/engine/ui/EngineUI.h
        src/engine/ui/imgui_style.h
        src/engine/EngineCamera.cpp
        src/engine/EngineCamera.h
        src/engine/components/PointLight.cpp
        src/engine/components/PointLight.h
        src/engine/components/Skybox.cpp
        src/engine/components/Skybox.h
        src/engine/components/Model.cpp src/engine/entity/Entity.cpp src/engine/entity/Entity.h src/engine/entity/Component.cpp src/engine/entity/Component.h src/engine/components/Transform.cpp src/engine/components/Transform.h)

set( LIB "lib/glad.c" )

set( INCLUDE "include/" )
set( Assimp_SOURCE_DIR ${INCLUDE}/assimp )
include_directories(${INCLUDE}
        ${Assimp_SOURCE_DIR}/include
        ${Assimp_SOURCE_DIR}/code)

LINK_DIRECTORIES(
        ${Assimp_SOURCE_DIR}
        ${Assimp_SOURCE_DIR}/lib
)


set( IMGUI ${INCLUDE}/imgui/imgui.cpp 
        ${INCLUDE}/imgui/imgui_demo.cpp 
        ${INCLUDE}/imgui/imgui_draw.cpp
        ${INCLUDE}/imgui/imgui_tables.cpp
        ${INCLUDE}/imgui/imgui_widgets.cpp

        ${INCLUDE}/imgui/backends/imgui_impl_glfw.cpp
        ${INCLUDE}/imgui/backends/imgui_impl_opengl3.cpp
        )

add_executable(${PROJECT_NAME} ${LIB} ${SOURCE} ${IMGUI})

target_link_libraries(${PROJECT_NAME} GL dl glfw assimp)


set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -Wall")
find_package(OpenGL REQUIRED)
add_definitions(${OPENGL_DEFINITIONS})
find_package(X11 REQUIRED)
# note that the order is important for setting the libs
# use pkg-config --libs $(pkg-config --print-requires --print-requires-private glfw3) in a terminal to confirm
set(LIBS ${GLFW3_LIBRARY} X11 Xrandr Xinerama Xi Xxf86vm Xcursor GL dl pthread freetype ${ASSIMP_LIBRARY})
set (CMAKE_CXX_LINK_EXECUTABLE "${CMAKE_CXX_LINK_EXECUTABLE} -ldl")