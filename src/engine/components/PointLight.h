//
// Created by nizam on 4/7/23.
//

#ifndef SWANENGINE_POINTLIGHT_H
#define SWANENGINE_POINTLIGHT_H


#include "../Shader.h"

class PointLight
{
public:
    // Light data
    glm::vec3 Position = glm::vec3(0.1f, 0.0f, 0.0f);
    glm::vec3 Ambient = glm::vec3(1.0f, 0.0f, 0.0f);
    glm::vec3 Diffuse = glm::vec3(1.0f, 0.0f, 0.0f);
    glm::vec3 Specular = glm::vec3(1.0f, 0.0f, 0.0f);
    // Default values: https://learnopengl.com/Lighting/Light-casters
    float Constant = 1.0f;
    float Linear = 0.35f;
    float Quadratic = 0.44f;

    unsigned int VBO, VAO, EBO, texture;
    Shader textureShader;
    
    PointLight();
    PointLight(glm::vec3 position, 
        glm::vec3 ambient, 
        glm::vec3 diffuse, 
        float constant, 
        float linear,
        float quadratic);

    void HandleLight();
    void SetBasicColor(glm::vec3 color, float ambientForce);
    void DeallocateLight();
private:
    void Compile();
};


#endif //SWANENGINE_POINTLIGHT_H
