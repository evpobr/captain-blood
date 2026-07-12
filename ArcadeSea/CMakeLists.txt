project(ArcadeSea)

add_library(ArcadeSea SHARED
    asspecial/BowGeometry.cpp
    asspecial/BowGeometry.h
    asspecial/BowParticles.cpp
    asspecial/BowParticles.h
    asspecial/BowWaveEmitter.cpp
    asspecial/BowWaveEmitter.h
    asspecial/ClothBurns.cpp
    asspecial/ClothBurns.h
    asspecial/FakeSailRender.cpp
    asspecial/FakeSailRender.h
    asspecial/MOSailOwner.cpp
    asspecial/MOSailOwner.h
    asspecial/PhysSailRender.cpp
    asspecial/PhysSailRender.h
    asspecial/SeaFatalityManager.cpp
    asspecial/SeaFatalityManager.h
    Ballistics.cpp
    Ballistics.h
    DebugInfoShower.cpp
    DebugInfoShower.h
    ExplosionPatch.cpp
    ExplosionPatch.h
    Islands/IslandsMap.cpp
    Islands/IslandsMap.h
    Ocean3/Executor.cpp
    Ocean3/fft.cpp
    Ocean3/fft.h
    Ocean3/fft_sse.cpp
    Ocean3/fft_x360.cpp
    Ocean3/Ocean.cpp
    Ocean3/Ocean.h
    Ocean3/Ocean_pc.cpp
    Ocean3/Ocean_x360.cpp
    # Ocean3/Ocean3.cpp
    Ocean3/Refractor.cpp
    Ocean3/SphereMap.cpp
    pch.h
    sea/Intel.h
    sea/sea.cpp
    sea/sea.h
    sea/SSE.h
    SeaMissionParams.cpp
    SeaMissionParams.h
    ShipAliveDetector.cpp
    ShipAliveDetector.h
    ShipDamageDetector.cpp
    ShipDamageDetector.h
    # ShipGUIUpdater.cpp
    # ShipGUIUpdater.h
    ships/AttackHandler.cpp
    ships/AttackHandler.h
    ships/BrokenSystemMaker.cpp
    ships/BrokenSystemMaker.h
    ships/HullPart.cpp
    ships/HullPart.h
    ships/LittleManImpl.cpp
    ships/LittleManImpl.h
    ships/Mast.cpp
    ships/Mast.h
    ships/PartsClassificator.cpp
    ships/PartsClassificator.h
    ships/PartVisitor.h
    ships/PhysForm.h
    ships/Rope.cpp
    ships/Rope.h
    ships/Sail.cpp
    ships/Sail.h
    ships/Ship.cpp
    ships/Ship.h
    ships/ShipAni.cpp
    ships/ShipAni.h
    ships/ShipPart.cpp
    ships/ShipPart.h
    ships/ShipPattern.cpp
    ships/ShipPattern.h
    ships/shipsai/IsterlingShipAI.cpp
    ships/shipsai/IsterlingShipAI.h
    ships/shipsai/IsterlingShipAIParams.cpp
    ships/shipsai/IsterlingShipAIParams.h
    ships/shipsai/ShipAIBattle.cpp
    ships/shipsai/ShipAIBattle.h
    ships/shipsai/ShipAIBattleParams.cpp
    ships/shipsai/ShipAIBattleParams.h
    ships/shipsai/ShipAIBrander.cpp
    ships/shipsai/ShipAIBrander.h
    ships/shipsai/ShipAIBranderParams.h
    ships/shipsai/ShipAIDebug.h
    ships/shipsai/ShipAIMovePath.cpp
    ships/shipsai/ShipAIMovePath.h
    # ships/shipsai/ShipAIPlayerControl.cpp
    # ships/shipsai/ShipAIPlayerControl.h
    ships/shipsai/ShipAIPlayerControlStorm.cpp
    ships/shipsai/ShipAIPlayerControlStorm.h
    ships/shipsai/ShipAITrack.cpp
    ships/shipsai/ShipAITrack.h
    ships/shipsai/ShipAITrackParams.cpp
    ships/shipsai/ShipAITrackParams.h
    ships/shipsai/ShipAIWay.cpp
    ships/shipsai/ShipAIWay.h
    ships/shipsai/ShipAIWayNode.cpp
    ships/shipsai/ShipAIWayNode.h
    ships/shipsai/ShipController.cpp
    ships/shipsai/ShipController.h
    ships/shipsai/ShipsAI.cpp
    ships/shipsai/ShipsAI.h
    ships/shipsai/ShipsAIService.cpp
    ships/shipsai/ShipsAIService.h
    ships/shipsai/WayTrack.cpp
    ships/shipsai/WayTrack.h
    ships/ShipSide.cpp
    ships/ShipSide.h
    ships/ShipStatistics.cpp
    ships/ShipStatistics.h
    ships/ShipTouch.cpp
    ships/ShipTouch.h
    ships/Yard.cpp
    ships/Yard.h
    TargetPoints.cpp
    TargetPoints.h
    TrackManagerLogic.cpp
    TrackManagerLogic.h
    transforminvertor/TransformInvertor.cpp
    transforminvertor/TransformInvertor.h
    weapons/Cannon.cpp
    weapons/Cannon.h
    weapons/CannonBall.cpp
    weapons/CannonBall.h
    weapons/CannonBallBatcher.cpp
    weapons/CannonBallBatcher.h
    weapons/CannonBonusHelper.cpp
    weapons/CannonBonusHelper.h
    weapons/FlameThrower.cpp
    weapons/FlameThrower.h
    weapons/Mine.cpp
    weapons/Mine.h
    weapons/MissionCannon.cpp
    weapons/MissionCannon.h
    weapons/MissionFlameThrower.cpp
    weapons/MissionFlameThrower.h
    weapons/Weapon.cpp
    weapons/Weapon.h
    weapons/WeaponInspector.h
    weapons/WeaponPattern.cpp
    weapons/WeaponPattern.h
    weapons/WeaponPlatform.cpp
    weapons/WeaponPlatform.h
)

set_target_properties(ArcadeSea PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/modules
    LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/modules
    ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/modules
)

if(MSVC)
    target_compile_options(ArcadeSea PRIVATE /wd4091)
endif()

target_link_libraries(ArcadeSea PRIVATE PhysX::PhysX)
target_compile_options(ArcadeSea PRIVATE /Zc:forScope-)
