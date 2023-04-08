#ifndef SWANENGINE_SKYBOX_H
#define SWANENGINE_SKYBOX_H

#include <vector>
#include <string>
#include <glad/glad.h>
#include "../Shader.h"

class Skybox 
{
public:
    std::vector<std::string> Faces
    {
        "./resources/textures/skybox/right.jpg",
        "./resources/textures/skybox/left.jpg",
        "./resources/textures/skybox/top.jpg",
        "./resources/textures/skybox/bottom.jpg",
        "./resources/textures/skybox/front.jpg",
        "./resources/textures/skybox/back.jpg"
    };

    GLuint CubemapTexture;
    Shader SkyboxShader;

    Skybox();
    Skybox(std::vector<std::string> faces);

    void HandleSkybox();
private:
    unsigned int VAO, VBO;
    void compile();
};

#endif //SWANENGINE_SKYBOX_H
