//
// Created by nizam on 4/7/23.
//

#ifndef SWANENGINE_TEXTURELOADER_H
#define SWANENGINE_TEXTURELOADER_H


#include <glad/glad.h>

class TextureLoader {
public:
    static GLuint LoadTexture(const char * path);
};


#endif //SWANENGINE_TEXTURELOADER_H
