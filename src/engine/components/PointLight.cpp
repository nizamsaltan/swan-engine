//
// Created by nizam on 4/7/23.
//

#include "PointLight.h"


#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <glad/glad.h>

#include "../../cube_vertices.h"
#include "../TextureLoader.h"
#include "EngineCamera.h"
#include "../../Global.h"

PointLight::PointLight()
{
    Compile();
}

PointLight::PointLight(glm::vec3 position, 
        glm::vec3 ambient, 
        glm::vec3 diffuse, 
        float constant, 
        float linear,
        float quadratic)
{
    Position = position;
    Ambient = ambient;
    Diffuse = diffuse;
    Constant = constant;
    Linear = linear;
    Quadratic = quadratic;

    Compile();
}

void PointLight::HandleLight()
{
    // Render indicator texture
    // ------------------------

    // bind textures on corresponding texture units
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, texture);

    // activate shader
    textureShader.use();

    // create transformations
    glm::mat4 model = glm::inverse(glm::lookAt(Position, EngineCamera::Position, EngineCamera::Up));    glm::mat4 view = EngineCamera::GetViewMatrix();
    glm::mat4 projection = EngineCamera::GetProjectionMatrix();
    // retrieve the matrix uniform locations
    GLint modelLoc = glGetUniformLocation(textureShader.ID, "model");
    GLint viewLoc  = glGetUniformLocation(textureShader.ID, "view");
    // pass them to the shaders (3 different ways)
    glUniformMatrix4fv(modelLoc, 1, GL_FALSE, glm::value_ptr(model));
    glUniformMatrix4fv(viewLoc, 1, GL_FALSE, &view[0][0]);
    // note: currently we set the projection matrix each frame, but since the projection matrix rarely changes it's often best practice to set it outside the main loop only once.
    textureShader.setMat4("projection", projection);

    // render container
    glBindVertexArray(VAO);
    glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, nullptr);

    // Handle light shader
}

void PointLight::SetBasicColor(glm::vec3 color, float ambientForce) 
{
    Ambient = color * ambientForce;
    Diffuse = color;
    Specular = color;
}

void PointLight::DeallocateLight() 
{
    glDeleteVertexArrays(1, &VAO);
    glDeleteBuffers(1, &VBO);
    glDeleteBuffers(1, &EBO);
}

void PointLight::Compile()
{
    // Make texture plane
    // ----------
    glGenVertexArrays(1, &VAO);
    glGenBuffers(1, &VBO);
    glGenBuffers(1, &EBO);

    glBindVertexArray(VAO);

    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(v_plane_with_texture), v_plane_with_texture, GL_STATIC_DRAW);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(plane_indices), plane_indices, GL_STATIC_DRAW);

    // position attribute
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void*)nullptr);
    glEnableVertexAttribArray(0);
    // texture coord attribute
    glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void*)(3 * sizeof(float)));
    glEnableVertexAttribArray(1);

    // Texture
    texture = TextureLoader::LoadTexture("./resources/textures/engine/lamp.png");

    // build and compile shader
    textureShader.VertexPath = "./resources/shaders/texture.vert";
    textureShader.FragmentPath = "./resources/shaders/texture.frag";
    textureShader.compile();

    // tell opengl for each sampler to which texture unit it belongs to (only has to be done once)
    textureShader.use();
    textureShader.setInt("texture", 0);
}
