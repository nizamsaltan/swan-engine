//
// Created by nizam on 2/28/23.
//

#ifndef GAZELLE_ENGINEUI_H
#define GAZELLE_ENGINEUI_H


#include "GLFW/glfw3.h"
#include "../FrameBuffer.h"

class EngineUI {
public:
    static bool isSceneWindowHover;
    static void Init(GLFWwindow* window);
    static void PreRender(FrameBuffer* sceneBuffer);
    static void PostRender();
    static void Shutdown();
};

#endif //GAZELLE_ENGINEUI_H
