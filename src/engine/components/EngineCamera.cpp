//
// Created by nizam on 4/7/23.
//

#include "EngineCamera.h"
#include <glm/ext/matrix_transform.hpp>


CameraMovementMethod EngineCamera::method;
// camera Attributes
glm::vec3 EngineCamera::Position = glm::vec3(0.0f, 3.0f, 10.0f);
glm::vec3 EngineCamera::Front = glm::vec3(0.0f, 0.0f, -1.0f);
glm::vec3 EngineCamera::Up;
glm::vec3 EngineCamera::Right;
glm::vec3 EngineCamera::WorldUp = glm::vec3(0.0f, 1.0f, 0.0f);
// euler Angles
float EngineCamera::Yaw = -90.0f;
float EngineCamera::Pitch = 0.0f;
// camera options
float EngineCamera::MovementSpeed = 2.5f;
float EngineCamera::MouseSensitivity = 0.1f;
float EngineCamera::Zoom = 45.0f;

glm::mat4 EngineCamera::GetViewMatrix()
{
    return glm::lookAt(Position, Position + Front, Up);
}

void EngineCamera::ProcessKeyboard(CameraMovementDirection direction, float speed)
{
    float velocity = MovementSpeed * speed;
    if (direction == FORWARD)
        Position += Front * velocity;
    if (direction == BACKWARD)
        Position -= Front * velocity;
    if (direction == LEFT)
        Position -= Right * velocity;
    if (direction == RIGHT)
        Position += Right * velocity;
    if (direction == UP)
        Position += Up * velocity;
    if (direction == DOWN)
        Position -= Up * velocity;
}

void EngineCamera::ProcessMouseMovement(float xOffset, float yOffset, GLboolean constrainPitch)
{
    xOffset *= MouseSensitivity;
    yOffset *= MouseSensitivity;

    Yaw   += xOffset;
    Pitch += yOffset;

    // make sure that when pitch is out of bounds, screen doesn't get flipped
    if (constrainPitch)
    {
        if (Pitch > 89.0f)
            Pitch = 89.0f;
        if (Pitch < -89.0f)
            Pitch = -89.0f;
    }

    // update Front, Right and Up Vectors using the updated Euler angles
    updateCameraVectors();
}

void EngineCamera::ProcessMouseScroll(float yOffset)
{
    Zoom -= (float)yOffset;
    if (Zoom < 1.0f)
        Zoom = 1.0f;
    if (Zoom > 60.0f)
        Zoom = 60.0f;
}
