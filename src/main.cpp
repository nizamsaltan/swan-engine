#include <iostream>
#include <vector>

#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

#include "Global.h"
#include "engine/Shader.h"
#include "engine/ui/EngineUI.h"
#include "engine/Model.h"
#include "engine/components/EngineCamera.h"
#include "engine/components/PointLight.h"
#include "engine/components/Skybox.h"

void framebuffer_size_callback([[maybe_unused]] GLFWwindow* window, int width, int height);
void mouse_callback([[maybe_unused]] GLFWwindow* window, double xPosIn, double yPosIn);
void scroll_callback([[maybe_unused]] GLFWwindow* window, [[maybe_unused]] double xOffset, double yOffset);
void processInput(GLFWwindow *window);
void setLights(Shader lightingShader);

// TODO: Make an input class and add these vars
// camera
float lastX = (float)Window::SCR_WIDTH / 2.0f;
float lastY = (float)Window::SCR_HEIGHT / 2.0f;

FrameBuffer* screenBuffer;

std::vector<PointLight> pointLights;

int main()
{
    // glfw: initialize and configure
    // ------------------------------
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

#ifdef __APPLE__
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
#endif

    // glfw window creation
    // --------------------
    GLFWwindow* window = glfwCreateWindow((int)Window::SCR_WIDTH, (int)Window::SCR_HEIGHT, "Swan Engine", nullptr, nullptr);
    if (window == nullptr)
    {
        std::cout << "Failed to create GLFW window" << std::endl;
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
    glfwSetCursorPosCallback(window, mouse_callback);
    glfwSetScrollCallback(window, scroll_callback);

    // glad: load all OpenGL function pointers
    if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
    {
        std::cout << "Failed to initialize GLAD" << std::endl;
        return -1;
    }

    EngineUI::Init(window);

    // configure global opengl state
    glEnable(GL_DEPTH_TEST);

    // build and compile our shader and model
    Shader ourShader("./resources/shaders/default.vert", "./resources/shaders/default.frag");
    Model ourModel("./resources/models/example/tower/wooden_watch_tower2.obj");

    // Set shader values
    ourShader.use();
    ourShader.setInt("material.diffuse", 0);
    ourShader.setInt("material.specular", 1);

    // Have 4 point lights in code
    for (size_t i = 0; i < 2; i++)
    {
        PointLight pointLight;
        pointLights.push_back(pointLight);
    }

    Skybox skybox;

    screenBuffer = new FrameBuffer((float)Window::SCR_WIDTH, (float)Window::SCR_HEIGHT);

    // render loop
    // -----------
    while (!glfwWindowShouldClose(window))
    {
        // per-frame time logic
        auto currentFrame = static_cast<float>(glfwGetTime());
        Time::DeltaTime = currentFrame - Time::LastFrame;
        Time::LastFrame = currentFrame;

        // input
        processInput(window);

        EngineUI::PreRender(screenBuffer);

        // render
        // ------
        glEnable(GL_DEPTH_TEST); // enable depth testing (is disabled for rendering screen-space quad)

        glClearColor(0.1f, 0.1f, 0.1f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

        // don't forget to enable shader before setting uniforms
        ourShader.use();
        ourShader.setVec3("viewPos", EngineCamera::Position);
        ourShader.setFloat("material.shininess", 3.0f);

        setLights(ourShader);

        // view/projection transformations
        glm::mat4 projection = EngineCamera::GetProjectionMatrix();
        glm::mat4 view = EngineCamera::GetViewMatrix();
        ourShader.setMat4("projection", projection);
        ourShader.setMat4("view", view);

        // render the loaded model
        glm::mat4 model = glm::mat4(1.0f);
        model = glm::translate(model, glm::vec3(0.0f, 0.0f, 0.0f)); // translate it down, so it's at the center of the scene
        model = glm::scale(model, glm::vec3(1.0f, 1.0f, 1.0f));	// it's a bit too big for our scene, so scale it down
        ourShader.setMat4("model", model);
        ourModel.Draw(ourShader);

        //setLights(ourShader);
        //TODO: Make other light types
        for (size_t i = 0; i < pointLights.size(); i++)
            pointLights[i].HandleLight();

        // Render skybox lastly
        skybox.HandleSkybox();

        // Scene texture frame buffer
        // now bind back to default framebuffer and draw a quad plane with the attached framebuffer color texture
        glBindFramebuffer(GL_FRAMEBUFFER, 0);
        glDisable(GL_DEPTH_TEST); // disable depth test so screen-space quad isn't discarded due to depth test.
        // clear all relevant buffers
        glClearColor(0.0f, 0.0f, 0.0f, 1.0f); // set clear color to black (not really necessary actually, since we won't be able to see behind the quad anyways)
        glClear(GL_COLOR_BUFFER_BIT);

        EngineUI::PostRender();

        // glfw: swap buffers and poll IO events (keys pressed/released, mouse moved etc.)
        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    EngineUI::Shutdown();

    // Remove point light objects
    for (size_t i = 0; i < pointLights.size(); i++)
        pointLights[i].DeallocateLight();

    // glfw: terminate, clearing all previously allocated GLFW resources.
    glfwTerminate();
    return 0;
}

bool EngineUI::isSceneWindowHover;
// process all input: query GLFW whether relevant keys are pressed/released this frame and react accordingly
void processInput(GLFWwindow *window)
{
    if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
        glfwSetWindowShouldClose(window, true);


    // TODO: Handle camera input inside class itself
    if (EngineUI::isSceneWindowHover && glfwGetMouseButton(window, 1))
        EngineCamera::method = FreeLook;
    if (!glfwGetMouseButton(window, 1) && EngineCamera::method != None)
    {
        EngineUI::isSceneWindowHover = true;
        EngineCamera::method = None;
    }

    bool speedUp = glfwGetKey(window, GLFW_KEY_LEFT_SHIFT) == GLFW_PRESS;
    auto cameraSpeed = static_cast<float>(speedUp ? 6 : 2);
    switch (EngineCamera::method)
    {
        case FreeLook:
            glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);

            if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS)
                EngineCamera::ProcessKeyboard(FORWARD, Time::DeltaTime * cameraSpeed);
            if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS)
                EngineCamera::ProcessKeyboard(BACKWARD, Time::DeltaTime * cameraSpeed);
            if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS)
                EngineCamera::ProcessKeyboard(LEFT, Time::DeltaTime * cameraSpeed);
            if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS)
                EngineCamera::ProcessKeyboard(RIGHT, Time::DeltaTime * cameraSpeed);
            if (glfwGetKey(window, GLFW_KEY_E) == GLFW_PRESS)
                EngineCamera::ProcessKeyboard(UP, Time::DeltaTime * cameraSpeed);
            if (glfwGetKey(window, GLFW_KEY_Q) == GLFW_PRESS)
                EngineCamera::ProcessKeyboard(DOWN, Time::DeltaTime * cameraSpeed);
            break;
        case None:
            glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_NORMAL);
            break;
    }
}

// glfw: whenever the mouse moves, this callback is called
void mouse_callback([[maybe_unused]] GLFWwindow* window, double xPosIn, double yPosIn)
{
    auto xPos = static_cast<float>(xPosIn);
    auto yPos = static_cast<float>(yPosIn);

    float xDelta = xPos - lastX;
    float yDelta = lastY - yPos; // reversed since y-coordinates go from bottom to top

    lastX = xPos;
    lastY = yPos;

    // TODO: only designed for one movement method
    // TODO: Handle camera input inside class itself
    if (EngineCamera::method == FreeLook)
        EngineCamera::ProcessMouseMovement(xDelta, yDelta);
}

// glfw: whenever the mouse scroll wheel scrolls, this callback is called
void scroll_callback([[maybe_unused]] GLFWwindow* window, [[maybe_unused]] double xOffset, [[maybe_unused]] double yOffset)
{
    // TODO: only designed for one movement method
    // TODO: Handle camera input inside class itself
    if (EngineCamera::method == FreeLook)
        EngineCamera::ProcessMouseScroll(static_cast<float>(yOffset));
}

// glfw: whenever the window size changed (by OS or user resize) this callback function executes
void framebuffer_size_callback([[maybe_unused]] GLFWwindow* window, int width, int height)
{
    Window::SCR_WIDTH = width;
    Window::SCR_HEIGHT = height;
    glViewport(0, 0, width, height);
}

// set light attributes
void setLights(Shader lightingShader)
{
    // TODO: Add this function to mesh class itself
    // directional light
    lightingShader.setVec3("dirLight.direction", -0.2f, -1.0f, -0.3f);
    lightingShader.setVec3("dirLight.ambient", 1.0f, 1.0f, 1.0f);
    lightingShader.setVec3("dirLight.diffuse", 0.4f, 0.4f, 0.4f);
    lightingShader.setVec3("dirLight.specular", 0.5f, 0.5f, 0.5f);

    // 1. Get point light in list
    // 2. Set number of point lights to shader

    pointLights[0].Position = glm::vec3(0.0f, 5.0f, 0.0f); // for debug purpose
    pointLights[1].SetBasicColor(glm::vec3(0.0f, 0.0f, 1.0f), 1);
    for (int i = 0; i < pointLights.size(); i++)
    {
        std::string target = "pointLights[" + std::to_string(i) + "].";
        lightingShader.setVec3(target + "position", pointLights[i].Position);
        lightingShader.setVec3(target + "ambient", pointLights[i].Ambient);
        lightingShader.setVec3(target + "diffuse", pointLights[i].Diffuse);
        lightingShader.setVec3(target + "specular", pointLights[i].Specular);
        lightingShader.setFloat(target + "constant", pointLights[i].Constant);
        lightingShader.setFloat(target + "linear", pointLights[i].Linear);
        lightingShader.setFloat(target + "quadratic", pointLights[i].Quadratic);   
    }

    // spotLight
    //lightingShader.setVec3("spotLight.position", EngineCamera::Position);
    //lightingShader.setVec3("spotLight.direction", EngineCamera::Front);
    lightingShader.setVec3("spotLight.position", glm::vec3(0.0f));
    lightingShader.setVec3("spotLight.direction", glm::vec3(0.0f));
    lightingShader.setVec3("spotLight.ambient", 0.0f, 0.0f, 0.0f);
    lightingShader.setVec3("spotLight.diffuse", 1.0f, 1.0f, 1.0f);
    lightingShader.setVec3("spotLight.specular", 1.0f, 1.0f, 1.0f);
    lightingShader.setFloat("spotLight.constant", 1.0f);
    lightingShader.setFloat("spotLight.linear", 0.09f);
    lightingShader.setFloat("spotLight.quadratic", 0.032f);
    lightingShader.setFloat("spotLight.cutOff", glm::cos(glm::radians(12.5f)));
    lightingShader.setFloat("spotLight.outerCutOff", glm::cos(glm::radians(15.0f)));
}