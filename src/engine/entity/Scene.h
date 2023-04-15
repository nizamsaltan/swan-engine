//
// Created by nizam on 4/15/23.
//

#ifndef SWANENGINE_SCENE_H
#define SWANENGINE_SCENE_H

#include <vector>
#include "Entity.h"

class Scene
{
public:
    // Name maybe?
    std::vector<Entity*> entities;

    // Calls all start functions in entities vector
    void CallStart();

    // Calls all update functions in entities vector
    void CallUpdate();


    // Add component to entity
    void AddEntity(Entity& target);

    // Create new entity inside scene
    Entity CreateEntity();

};


#endif //SWANENGINE_SCENE_H
