//
// Created by nizam on 4/15/23.
//

#include "Scene.h"

void Scene::CallStart()
{
    for (int i = 0; i < entities.capacity(); ++i) {
        entities[i]->CallStart();
    }
}

void Scene::CallUpdate()
{
    for (int i = 0; i < entities.capacity(); ++i) {
        entities[i]->CallUpdate();
    }
}

void Scene::AddEntity(Entity &target)
{
    entities.push_back(&target);
}
