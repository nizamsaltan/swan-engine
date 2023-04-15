//
// Created by nizam on 4/15/23.
//

#include "Entity.h"

void Entity::AddComponent(Component& target)
{
    components.push_back(&target);
}

void Entity::CallStart()
{
    for (int i = 0; i < components.capacity(); ++i) {
        components[i]->Start();
    }
}

void Entity::CallUpdate()
{
    for (int i = 0; i < components.capacity(); ++i) {
        components[i]->Update();
    }
}
