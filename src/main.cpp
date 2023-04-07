#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

#include <iostream>
#include "Global.h"
#include "engine/Shader.h"
#include "engine/ui/EngineUI.h"
#include "engine/Model.h"
#include "engine/components/EngineCamera.h"
#include "engine/components/PointLight.h"

void framebuffer_size_callback([[maybe_unused]] GLFWwindow* window, int width, int height);
void mouse_callback([[maybe_unused]] GLFWwindow* window, double xPosIn, double yPosIn);
void scroll_callback([[maybe_unused]] GLFWwindow* window, [[maybe_unused]] double xOffset, double yOffset);
void processInput(GLFWwindow *window);
void setLights(Shader lightingShader, glm::vec3 firstPos, glm::vec3 ambient,glm::vec3 diffuse,glm::vec3 specular);

// TODO: Make an input class and add these vars
// camera
float lastX = Window::SCR_WIDTH / 2.0f;
float lastY = Window::SCR_HEIGHT / 2.0f;

FrameBuffer* screenBuffer;

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
    GLFWwindow* window = glfwCreateWindow(Window::SCR_WIDTH, Window::SCR_HEIGHT, "Swan Engine", nullptr, nullptr);
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

    // TODO: Handle multiple lights
    PointLight pointLight;

    screenBuffer = new FrameBuffer(Window::SCR_WIDTH, Window::SCR_HEIGHT);

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

        // view/projection transformations
        glm::mat4 projection = glm::perspective(glm::radians(EngineCamera::Zoom), (float)Window::SCR_WIDTH / (float)Window::SCR_HEIGHT, 0.1f, 10000.0f);
        glm::mat4 view = EngineCamera::GetViewMatrix();
        ourShader.setMat4("projection", projection);
        ourShader.setMat4("view", view);

        // render the loaded model
        glm::mat4 model = glm::mat4(1.0f);
        model = glm::translate(model, glm::vec3(0.0f, 0.0f, 0.0f)); // translate it down, so it's at the center of the scene
        model = glm::scale(model, glm::vec3(1.0f, 1.0f, 1.0f));	// it's a bit too big for our scene, so scale it down
        ourShader.setMat4("model", model);
        ourModel.Draw(ourShader);


        setLights(ourShader, pointLight.Position, pointLight.Ambient, pointLight.Diffuse, pointLight.Specular);
        // TODO: Handle multiple lights
        pointLight.HandleLight();


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
    pointLight.DeallocateLight();

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
    glViewport(0, 0, width, height);
}

// set light attributes
void setLights(Shader lightingShader, glm::vec3 firstPos, glm::vec3 ambient,glm::vec3 diffuse,glm::vec3 specular)
{
    /*
   Here we set all the uniforms for the 5/6 types of lights we have. We have to set them manually and index
   the proper PointLight struct in the array to set each uniform variable. This can be done more code-friendly
   by defining light types as classes and set their values in there, or by using a more efficient uniform approach
   by using 'Uniform buffer objects', but that is something we'll discuss in the 'Advanced GLSL' tutorial.
*/
    glm::vec3 pointLightPositions[] = {
            glm::vec3( 0.7f,  0.2f,  2.0f),
            glm::vec3( 2.3f, -3.3f, -4.0f),
            glm::vec3(-4.0f,  2.0f, -12.0f),
            glm::vec3( 0.0f,  0.0f, -3.0f)
    };

    // directional light
    lightingShader.setVec3("dirLight.direction", -0.2f, -1.0f, -0.3f);
    lightingShader.setVec3("dirLight.ambient", 0.05f, 0.05f, 0.05f);
    lightingShader.setVec3("dirLight.diffuse", 0.4f, 0.4f, 0.4f);
    lightingShader.setVec3("dirLight.specular", 0.5f, 0.5f, 0.5f);
    // // directional light horor
    // lightingShader.setVec3("dirLight.direction", -0.2f, -1.0f, -0.3f);
    // lightingShader.setVec3("dirLight.ambient", 0.3f, 0.24f, 0.14f);
    // lightingShader.setVec3("dirLight.diffuse",  0.7f, 0.42f, 0.26f);
    // lightingShader.setVec3("dirLight.specular", 0.5f, 0.5f, 0.5f);
    

    // 1. Get point light in list
    // 2. Set number of point lights to shader

    // point light 1
    lightingShader.setVec3("pointLights[0].position", firstPos);
    lightingShader.setVec3("pointLights[0].ambient", ambient);
    lightingShader.setVec3("pointLights[0].diffuse", diffuse);
    lightingShader.setVec3("pointLights[0].specular", specular);
    lightingShader.setFloat("pointLights[0].constant", 1.0f);
    lightingShader.setFloat("pointLights[0].linear", 0.7f);
    lightingShader.setFloat("pointLights[0].quadratic", 1.8f);
    // point light 2
    lightingShader.setVec3("pointLights[1].position", pointLightPositions[1]);
    lightingShader.setVec3("pointLights[1].ambient", 0.05f, 0.05f, 0.05f);
    lightingShader.setVec3("pointLights[1].diffuse", 0.8f, 0.8f, 0.8f);
    lightingShader.setVec3("pointLights[1].specular", 1.0f, 1.0f, 1.0f);
    lightingShader.setFloat("pointLights[1].constant", 1.0f);
    lightingShader.setFloat("pointLights[1].linear", 0.09f);
    lightingShader.setFloat("pointLights[1].quadratic", 0.032f);
    // point light 3
    lightingShader.setVec3("pointLights[2].position", pointLightPositions[2]);
    lightingShader.setVec3("pointLights[2].ambient", 0.05f, 0.05f, 0.05f);
    lightingShader.setVec3("pointLights[2].diffuse", 0.8f, 0.8f, 0.8f);
    lightingShader.setVec3("pointLights[2].specular", 1.0f, 1.0f, 1.0f);
    lightingShader.setFloat("pointLights[2].constant", 1.0f);
    lightingShader.setFloat("pointLights[2].linear", 0.09f);
    lightingShader.setFloat("pointLights[2].quadratic", 0.032f);
    // point light 4
    lightingShader.setVec3("pointLights[3].position", pointLightPositions[3]);
    lightingShader.setVec3("pointLights[3].ambient", 0.05f, 0.05f, 0.05f);
    lightingShader.setVec3("pointLights[3].diffuse", 0.8f, 0.8f, 0.8f);
    lightingShader.setVec3("pointLights[3].specular", 1.0f, 1.0f, 1.0f);
    lightingShader.setFloat("pointLights[3].constant", 1.0f);
    lightingShader.setFloat("pointLights[3].linear", 0.09f);
    lightingShader.setFloat("pointLights[3].quadratic", 0.032f);
    
    
    // spotLight
    lightingShader.setVec3("spotLight.position", EngineCamera::Position);
    lightingShader.setVec3("spotLight.direction", EngineCamera::Front);
    lightingShader.setVec3("spotLight.ambient", 0.0f, 0.0f, 0.0f);
    lightingShader.setVec3("spotLight.diffuse", 1.0f, 1.0f, 1.0f);
    lightingShader.setVec3("spotLight.specular", 1.0f, 1.0f, 1.0f);
    lightingShader.setFloat("spotLight.constant", 1.0f);
    lightingShader.setFloat("spotLight.linear", 0.09f);
    lightingShader.setFloat("spotLight.quadratic", 0.032f);
    lightingShader.setFloat("spotLight.cutOff", glm::cos(glm::radians(12.5f)));
    lightingShader.setFloat("spotLight.outerCutOff", glm::cos(glm::radians(15.0f)));
}