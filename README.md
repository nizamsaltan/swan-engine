# Swan Engine
Swan Engine is 3D graphics engine written in C++ using OpenGL. This engine specifically designed for AR devices and apps.

// TODO:

![Referance](https://raw.githubusercontent.com/nizamsaltan/swan-engine/main/resources/Screenshot_20230415.png)

## Tools
- [GLFW](https://www.glfw.org/) -> Window creation
- [ImGUI](https://github.com/ocornut/imgui) -> GUI
- [Glm](https://github.com/g-truc/glm) -> Math library
- [Assimp](https://github.com/assimp/assimp) -> Model importer
- [STB](https://github.com/nothings/stb/blob/master/stb_image.h) -> Image loader

### Requirements
For Debian based distros
`apt install assimp-utils libassimp-dev libglfw3 libglfw3-dev cmake`

For Arch Linux based distros
`pacman -S assimp glfw cmake` 

## Development & Contributions
- Install requirements above
- Clone repo in main branch
- Use ./run script to quickly compile and test dev enviroment

### TODO
- Improve Mesh class (use shaders indside of Mesh class and handle render methods etc.)
- Improve default shader (add user defined light sources etc.)
