project(Physics)

add_library(Physics SHARED
    BoxProxy.cpp
    BoxProxy.h
    CapsuleProxy.cpp
    CapsuleProxy.h
    CharacterProxy.cpp
    CharacterProxy.h
    ClothMeshBuilder.cpp
    ClothMeshBuilder.h
    ClothMeshBuilderProxy.cpp
    ClothMeshBuilderProxy.h
    ClothProxy.cpp
    ClothProxy.h
    CombinedProxy.cpp
    CombinedProxy.h
    Common.h
    ConnectorProxy.cpp
    ConnectorProxy.h
    cookedbinaries/CookBinManager.cpp
    cookedbinaries/CookBinManager.h
    Deferrer.cpp
    Deferrer.h
    IProxy.h
    MaterialProxy.cpp
    MaterialProxy.h
    MeshProxy.cpp
    MeshProxy.h
    NxConvert.h
    PhysCharacter.cpp
    PhysCharacter.h
    PhysCloth.cpp
    PhysCloth.h
    PhysicsDebug.cpp
    PhysicsScene.cpp
    PhysicsScene.h
    PhysicsService.cpp
    PhysicsService.h
    PhysicsServiceStreams.cpp
    PhysInternal.h
    PhysMaterial.cpp
    PhysMaterial.h
    PhysRagdoll.cpp
    PhysRagdoll.h
    PhysRigidBody.cpp
    PhysRigidBody.h
    PhysTriangleMesh.cpp
    PhysTriangleMesh.h
    PlaneProxy.cpp
    PlaneProxy.h
    RagdollProxy.cpp
    RagdollProxy.h
    RigidBodyProxyHelper.h
    SphereProxy.cpp
    SphereProxy.h
)

set_target_properties(Physics PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/modules
    LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/modules
    ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/modules
)

target_link_libraries(Physics PRIVATE PhysX::PhysX)
target_compile_options(Physics PRIVATE /Zc:forScope-)
