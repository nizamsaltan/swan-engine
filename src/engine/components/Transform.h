//
// Created by nizam on 4/15/23.
//

#ifndef SWANENGINE_TRANSFORM_H
#define SWANENGINE_TRANSFORM_H


#include "glm/vec3.hpp"
#include "../entity/Component.h"


class Transform : public Component
{
public:
    glm::vec3 Position; // etc....
};


#endif //SWANENGINE_TRANSFORM_H
