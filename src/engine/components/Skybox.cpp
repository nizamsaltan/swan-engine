#include "Skybox.h"

#include <glm/gtc/matrix_transform.hpp>

#include "../../Global.h"
#include "../TextureLoader.h"
#include "EngineCamera.h"

Skybox::Skybox()
{    
    compile();
}

Skybox::Skybox(std::vector<std::string> faces)
{    
    faces = Faces;
    compile();
}

void Skybox::HandleSkybox()
{
    // draw skybox as last
    glDepthFunc(GL_LEQUAL);  // change depth function so depth test passes when values are equal to depth buffer's content
    SkyboxShader.use();
    glm::mat4 view = glm::mat4(glm::mat3(EngineCamera::GetViewMatrix())); // remove translation from the view matrix
    glm::mat4 projection = glm::perspective(glm::radians(EngineCamera::Zoom), (float)Window::SCR_WIDTH / (float)Window::SCR_HEIGHT, 0.1f, 10000.0f);
    SkyboxShader.setMat4("view", view);
    SkyboxShader.setMat4("projection", projection);
    // skybox cube
    glBindVertexArray(VAO);
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_CUBE_MAP, CubemapTexture);
    glDrawArrays(GL_TRIANGLES, 0, 36);
    glBindVertexArray(0);
    glDepthFunc(GL_LESS); // set depth function back to default
}

void Skybox::compile()
{
    SkyboxShader.VertexPath = "./resources/shaders/skybox.vert";
    SkyboxShader.FragmentPath = "./resources/shaders/skybox.frag";
    SkyboxShader.compile();

    float skyboxVertices[] = {
        // positions          
        -1.0f,  1.0f, -1.0f,
        -1.0f, -1.0f, -1.0f,
        1.0f, -1.0f, -1.0f,
        1.0f, -1.0f, -1.0f,
        1.0f,  1.0f, -1.0f,
        -1.0f,  1.0f, -1.0f,

        -1.0f, -1.0f,  1.0f,
        -1.0f, -1.0f, -1.0f,
        -1.0f,  1.0f, -1.0f,
        -1.0f,  1.0f, -1.0f,
        -1.0f,  1.0f,  1.0f,
        -1.0f, -1.0f,  1.0f,

        1.0f, -1.0f, -1.0f,
        1.0f, -1.0f,  1.0f,
        1.0f,  1.0f,  1.0f,
        1.0f,  1.0f,  1.0f,
        1.0f,  1.0f, -1.0f,
        1.0f, -1.0f, -1.0f,

        -1.0f, -1.0f,  1.0f,
        -1.0f,  1.0f,  1.0f,
        1.0f,  1.0f,  1.0f,
        1.0f,  1.0f,  1.0f,
        1.0f, -1.0f,  1.0f,
        -1.0f, -1.0f,  1.0f,

        -1.0f,  1.0f, -1.0f,
        1.0f,  1.0f, -1.0f,
        1.0f,  1.0f,  1.0f,
        1.0f,  1.0f,  1.0f,
        -1.0f,  1.0f,  1.0f,
        -1.0f,  1.0f, -1.0f,

        -1.0f, -1.0f, -1.0f,
        -1.0f, -1.0f,  1.0f,
        1.0f, -1.0f, -1.0f,
        1.0f, -1.0f, -1.0f,
        -1.0f, -1.0f,  1.0f,
        1.0f, -1.0f,  1.0f
    };

    // Skybox VAO
    glGenVertexArrays(1, &VAO);
    glGenBuffers(1, &VBO);
    glBindVertexArray(VAO);
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(skyboxVertices), &skyboxVertices, GL_STATIC_DRAW);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void*)0);

    // Skybox cubemap
    CubemapTexture = TextureLoader::LoadCubemap(Faces);

    // Activate shader
    SkyboxShader.use();
    SkyboxShader.setInt("skybox", 0);
}