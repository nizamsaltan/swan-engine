//
// Created by nizam on 4/7/23.
//

#ifndef SWANENGINE_TEXTURELOADER_H
#define SWANENGINE_TEXTURELOADER_H


#include <glad/glad.h>
#include <vector>
#include <string>

class TextureLoader {
public:
    static GLuint LoadTexture(const char * path, bool flip);
    static GLuint LoadCubemap(std::vector<std::string> faces);
};


#endif //SWANENGINE_TEXTURELOADER_H
