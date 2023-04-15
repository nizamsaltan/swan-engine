//
// Created by nizam on 3/15/23.
//

#ifndef GAZELLE_MODEL_H
#define GAZELLE_MODEL_H

#include <assimp/scene.h>

#include "../Shader.h"
#include "Mesh.h"
#include "PointLight.h"
#include "../entity/Component.h"

#include <string>
#include <fstream>
#include <sstream>
#include <iostream>
#include <map>
#include <vector>
using namespace std;

class Model : public Component
{
public:
    // model data
    vector<Texture> textures_loaded;	// stores all the textures loaded so far, optimization to make sure textures aren't loaded more than once.
    vector<Mesh>    meshes;
    string directory;
    string modelPath;
    Shader shader;
    bool gammaCorrection{};

    // TODO: SCENE!!!
    std::vector<PointLight> pointLights;
    // constructor, expects a filepath to a 3D model.
    Model(string const &path, bool gamma = false);

    // draws the model, and thus all its meshes
    void Draw();

    // deallocate mesh data
    void DeallocateModel();


    // Component callbacks
    void Update() override;
    void Start() override;
private:
    // loads a model with supported ASSIMP extensions from file and stores the resulting meshes in the meshes vector.
    void loadModel(string const &path);

    // set light attributes
    void handleLights();

    // processes a node in a recursive fashion. Processes each individual mesh located at the node and repeats this process on its children nodes (if any).
    void processNode(aiNode *node, const aiScene *scene);

    Mesh processMesh(aiMesh *mesh, const aiScene *scene);

    // checks all material textures of a given type and loads the textures if they're not loaded yet.
    // the required info is returned as a Texture struct.
    vector<Texture> loadMaterialTextures(aiMaterial *mat, aiTextureType type, const string& typeName);
};

#endif //GAZELLE_MODEL_H
