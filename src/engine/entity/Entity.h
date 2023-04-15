//
// Created by nizam on 4/15/23.
//

#ifndef SWANENGINE_ENTITY_H
#define SWANENGINE_ENTITY_H

#include <vector>
#include "../components/Transform.h" // adds component as well

class Entity
{
public:
    // Name, tag maybe?
    Transform transform;
    std::vector<Component*> components;

    // Calls all start functions in components vector
    void CallStart();

    // Calls all update functions in components vector
    void CallUpdate();


    // Add component to entity
    void AddComponent(Component& target);
};


#endif //SWANENGINE_ENTITY_H
