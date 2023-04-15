//
// Created by nizam on 4/7/23.
//

#ifndef SWANENGINE_ENGINECAMERA_H
#define SWANENGINE_ENGINECAMERA_H

#include "glm/glm.hpp"
#include "glad/glad.h"

// Defines several possible options for camera movement. Used as abstraction to stay away from window-system specific input methods
enum CameraMovementDirection {
    FORWARD,
    BACKWARD,
    LEFT,
    RIGHT,
    UP,
    DOWN,
};

enum CameraMovementMethod {
    None,
    FreeLook,
};

class EngineCamera {
public:
    static CameraMovementMethod method;
    // camera Attributes
    static glm::vec3 Position;
    static glm::vec3 Front;
    static glm::vec3 Up;
    static glm::vec3 Right;
    static glm::vec3 WorldUp;
    // euler Angles
    static float Yaw;
    static float Pitch;
    // camera options
    static float MovementSpeed;
    static float MouseSensitivity;
    static float Zoom;
    static float NearClip;
    static float FarClip;

    static glm::mat4 GetViewMatrix();
    static glm::mat4 GetProjectionMatrix();
    static glm::mat4 GetProjectionMatrix(bool calculateFov);
    static void ProcessKeyboard(CameraMovementDirection direction, float speed);
    static void ProcessMouseMovement(float xOffset, float yOffset, GLboolean constrainPitch = true);
    static void ProcessMouseScroll(float yOffset);

private:
    static glm::mat4 getPerspective(float fov);
    // calculates the front vector from the Camera's (updated) Euler Angles
    static void updateCameraVectors()
    {
        // calculate the new Front vector
        glm::vec3 front;
        front.x = cos(glm::radians(Yaw)) * cos(glm::radians(Pitch));
        front.y = sin(glm::radians(Pitch));
        front.z = sin(glm::radians(Yaw)) * cos(glm::radians(Pitch));
        Front = glm::normalize(front);
        // also re-calculate the Right and Up vector
        Right = glm::normalize(glm::cross(Front, WorldUp));  // normalize the vectors, because their length gets closer to 0 the more you look up or down which results in slower movement.
        Up    = glm::normalize(glm::cross(Right, Front));
    }
};


#endif //SWANENGINE_ENGINECAMERA_H
