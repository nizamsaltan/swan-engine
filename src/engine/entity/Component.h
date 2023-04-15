//
// Created by nizam on 4/15/23.
//

#ifndef SWANENGINE_COMPONENT_H
#define SWANENGINE_COMPONENT_H

#include <memory>
#include <iostream>

class Entity;

class Component
{
public:
    std::shared_ptr<Entity> owner;

    // Entity callbacks
    virtual void Update() {}
    virtual void Start() {}
};


#endif //SWANENGINE_COMPONENT_H
