//
// Created by nizam on 2/28/23.
//

#ifndef GAZELLE_FRAMEBUFFER_H
#define GAZELLE_FRAMEBUFFER_H

#include <iostream>
#include <glm/glm.hpp>

class FrameBuffer
{
public:
    FrameBuffer(float width, float height);
    ~FrameBuffer();
    unsigned int getFrameTexture();
    void RescaleFrameBuffer(float width, float height);
    void Bind() const;
    void Unbind() const;
private:
    unsigned int fbo;
    unsigned int texture;
    unsigned int rbo;
};

#endif //GAZELLE_FRAMEBUFFER_H
