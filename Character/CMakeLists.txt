project(Character)

add_library(Character SHARED
    ai/brains/aiBoatswain.cpp
    ai/brains/aiBoatswain.h
    ai/brains/aiBombardeer.cpp
    ai/brains/aiBombardeer.h
    ai/brains/aiBossParams.cpp
    ai/brains/aiBossParams.h
    ai/brains/aiBrain.cpp
    ai/brains/aiBrain.h
    ai/brains/aiCannon.cpp
    ai/brains/aiCannon.h
    ai/brains/aiChainman.cpp
    ai/brains/aiChainman.h
    ai/brains/aiEasterling.cpp
    ai/brains/aiEasterling.h
    ai/brains/aiExecutor.cpp
    ai/brains/aiExecutor.h
    ai/brains/aiFatGuy.cpp
    ai/brains/aiFatGuy.h
    ai/brains/aiFinalBoss.cpp
    ai/brains/aiFinalBoss.h
    ai/brains/aiKnight.cpp
    ai/brains/aiKnight.h
    ai/brains/aiKomendant.cpp
    ai/brains/aiKomendant.h
    ai/brains/aiLevasserAlly.cpp
    ai/brains/aiLevasserAlly.h
    ai/brains/aiMusketeer.cpp
    ai/brains/aiMusketeer.h
    ai/brains/aiNPC.cpp
    ai/brains/aiNPC.h
    ai/brains/aiOfficerShoot.cpp
    ai/brains/aiOfficerShoot.h
    ai/brains/aiParams.cpp
    ai/brains/aiParams.h
    ai/brains/aiPitt.cpp
    ai/brains/aiPitt.h
    ai/brains/aiPittWarrior.cpp
    ai/brains/aiPittWarrior.h
    ai/brains/aiServant.cpp
    ai/brains/aiServant.h
    ai/brains/aiTerroristAhmed.cpp
    ai/brains/aiTerroristAhmed.h
    ai/brains/aiWarrior.cpp
    ai/brains/aiWarrior.h
    ai/CharacterAI.h
    ai/doodle/CharacterAI_Doodle.cpp
    ai/thoughts/aiBlocking.cpp
    ai/thoughts/aiBlocking.h
    ai/thoughts/aiKick.cpp
    ai/thoughts/aiKick.h
    ai/thoughts/aiPursuit.cpp
    ai/thoughts/aiPursuit.h
    ai/thoughts/aiStanding.cpp
    ai/thoughts/aiStanding.h
    ai/thoughts/aiStrafing.cpp
    ai/thoughts/aiStrafing.h
    ai/thoughts/aiThought.cpp
    ai/thoughts/aiThought.h
    ai/thoughts/boatswain/aiBoatswainWirst.cpp
    ai/thoughts/boatswain/aiBoatswainWirst.h
    ai/thoughts/bombardeer/aiBombardeerDropBomb.cpp
    ai/thoughts/bombardeer/aiBombardeerDropBomb.h
    ai/thoughts/bombardeer/aiBombardeerPlaceBomb.cpp
    ai/thoughts/bombardeer/aiBombardeerPlaceBomb.h
    ai/thoughts/chainman/aiChainmanStanding.cpp
    ai/thoughts/chainman/aiChainmanStanding.h
    ai/thoughts/easterling/aiEasterlingDrink.cpp
    ai/thoughts/easterling/aiEasterlingDrink.h
    ai/thoughts/easterling/aiEasterlingRage.cpp
    ai/thoughts/easterling/aiEasterlingRage.h
    ai/thoughts/executor/aiExecutorKick.cpp
    ai/thoughts/executor/aiExecutorKick.h
    ai/thoughts/executor/aiExecutorPray.cpp
    ai/thoughts/executor/aiExecutorPray.h
    ai/thoughts/fatguy/aiFatGuyBlocking.cpp
    ai/thoughts/fatguy/aiFatGuyBlocking.h
    ai/thoughts/knight/aiKnightRage.cpp
    ai/thoughts/knight/aiKnightRage.h
    ai/thoughts/komendant/aiKomendantKick.cpp
    ai/thoughts/komendant/aiKomendantKick.h
    ai/thoughts/komendant/aiKomendantShoot.cpp
    ai/thoughts/komendant/aiKomendantShoot.h
    ai/thoughts/levasserally/aiLevasserAllyKick.cpp
    ai/thoughts/levasserally/aiLevasserAllyKick.h
    ai/thoughts/levasserally/aiLevasserAllyRoll.cpp
    ai/thoughts/levasserally/aiLevasserAllyRoll.h
    ai/thoughts/mushketer/aiMushketerShoot.cpp
    ai/thoughts/mushketer/aiMushketerShoot.h
    # ai/thoughts/officershoot/aiOfficerShootJumpBack.cpp
    # ai/thoughts/officershoot/aiOfficerShootJumpBack.h
    ai/thoughts/officershoot/aiOfficerShootKick.cpp
    ai/thoughts/officershoot/aiOfficerShootKick.h
    ai/thoughts/officershoot/aiOfficerShootShoot.cpp
    ai/thoughts/officershoot/aiOfficerShootShoot.h
    ai/thoughts/pitt/aiPittBlocking.cpp
    ai/thoughts/pitt/aiPittBlocking.h
    ai/thoughts/pitt/aiPittFatality.cpp
    ai/thoughts/pitt/aiPittFatality.h
    ai/thoughts/pitt/aiPittRoll.cpp
    ai/thoughts/pitt/aiPittRoll.h
    ai/util/aiActionStack.cpp
    ai/util/aiActionStack.h
    "auxiliary objects/actortimeline/ActorTimeLine.cpp"
    "auxiliary objects/actortimeline/ActorTimeLine.h"
    "auxiliary objects/ai zones/AIZones.cpp"
    "auxiliary objects/ai zones/AIZones.h"
    "auxiliary objects/arbiter/CharactersArbiter.cpp"
    "auxiliary objects/arbiter/CharactersArbiter.h"
    "auxiliary objects/arbiter/CharactersTime.cpp"
    "auxiliary objects/arbiter/CharactersTime.h"
    "auxiliary objects/attack params/AttackParams.cpp"
    "auxiliary objects/attack params/AttackParams.h"
    "auxiliary objects/autozoom/AutoZoom.cpp"
    "auxiliary objects/autozoom/AutoZoom.h"
    "auxiliary objects/basepattern/BasePattern.cpp"
    "auxiliary objects/basepattern/BasePattern.h"
    "auxiliary objects/bombboom/BombBoom.cpp"
    "auxiliary objects/bombboom/BombBoom.h"
    "auxiliary objects/bombpattern/BombPattern.cpp"
    "auxiliary objects/bombpattern/BombPattern.h"
    "auxiliary objects/bombsafe/BombSafe.cpp"
    "auxiliary objects/bombsafe/BombSafe.h"
    "auxiliary objects/bombtarget/BombTarget.cpp"
    "auxiliary objects/bombtarget/BombTarget.h"
    "auxiliary objects/bonusmaker/BonusMaker.cpp"
    "auxiliary objects/bonusmaker/BonusMaker.h"
    "auxiliary objects/buttonminigame/ButtonMiniGame.cpp"
    "auxiliary objects/buttonminigame/ButtonMiniGame.h"
    "auxiliary objects/charactereffect/CharacterEffect.cpp"
    "auxiliary objects/charactereffect/CharacterEffect.h"
    "auxiliary objects/charactereffect/Graphic.cpp"
    "auxiliary objects/charactereffect/Graphic.h"
    "auxiliary objects/charactermagnet/CharacterMagnet.cpp"
    "auxiliary objects/charactermagnet/CharacterMagnet.h"
    "auxiliary objects/combatpoints/CombatPoints.cpp"
    "auxiliary objects/combatpoints/CombatPoints.h"
    "auxiliary objects/effecttable/EffectTable.cpp"
    "auxiliary objects/effecttable/EffectTable.h"
    "auxiliary objects/fatality params/FatalityParams.cpp"
    "auxiliary objects/fatality params/FatalityParams.h"
    "auxiliary objects/hair params/HairParams.cpp"
    "auxiliary objects/hair params/HairParams.h"
    "auxiliary objects/lockcounter/LockCounter.cpp"
    "auxiliary objects/lockcounter/LockCounter.h"
    "auxiliary objects/mpkilldetector/MPKillDetector.cpp"
    "auxiliary objects/mpkilldetector/MPKillDetector.h"
    "auxiliary objects/nofatality/NoFatality.cpp"
    "auxiliary objects/nofatality/NoFatality.h"
    "auxiliary objects/npcpoints/NPCPoints.cpp"
    "auxiliary objects/npcpoints/NPCPoints.h"
    "auxiliary objects/pitofpain/PitOfPain.cpp"
    "auxiliary objects/pitofpain/PitOfPain.h"
    # "auxiliary objects/quick events/Barrel.cpp"
    # "auxiliary objects/quick events/Barrel.h"
    "auxiliary objects/quick events/Chest.cpp"
    "auxiliary objects/quick events/Chest.h"
    "auxiliary objects/quick events/ChestKeeper.cpp"
    "auxiliary objects/quick events/ChestKeeper.h"
    "auxiliary objects/quick events/ChestPattern.cpp"
    "auxiliary objects/quick events/ChestPattern.h"
    "auxiliary objects/quick events/Door.cpp"
    "auxiliary objects/quick events/Door.h"
    "auxiliary objects/quick events/DoorBlender.cpp"
    "auxiliary objects/quick events/DoorBlender.h"
    "auxiliary objects/quick events/NewTaran.cpp"
    "auxiliary objects/quick events/NewTaran.h"
    "auxiliary objects/quick events/QuickEvent.cpp"
    "auxiliary objects/quick events/QuickEvent.h"
    # "auxiliary objects/quick events/Rotor.cpp"
    # "auxiliary objects/quick events/Rotor.h"
    "auxiliary objects/quick events/SingleAction.cpp"
    "auxiliary objects/quick events/SingleAction.h"
    "auxiliary objects/quick events/Taran.cpp"
    "auxiliary objects/quick events/Taran.h"
    "auxiliary objects/quick events/TaranBlender.cpp"
    "auxiliary objects/quick events/TaranBlender.h"
    "auxiliary objects/respawngizmo/RespawnGizmo.cpp"
    "auxiliary objects/respawngizmo/RespawnGizmo.h"
    "auxiliary objects/safatypoints/SafatyPoints.cpp"
    "auxiliary objects/safatypoints/SafatyPoints.h"
    "auxiliary objects/slowmo/Slowmo.cpp"
    "auxiliary objects/slowmo/Slowmo.h"
    "auxiliary objects/SoundTools/SoundTools.cpp"
    "auxiliary objects/SoundTools/SoundTools.h"
    "auxiliary objects/tips/Tips.cpp"
    "auxiliary objects/tips/Tips.h"
    "auxiliary objects/tips/TipsManager.cpp"
    "auxiliary objects/tips/TipsManager.h"
    "auxiliary objects/waypoints/aiPathFinder.cpp"
    "auxiliary objects/waypoints/aiPathFinder.h"
    character/bonuses/BaseBonus.cpp
    character/bonuses/BaseBonus.h
    character/bonuses/BombBonus.cpp
    character/bonuses/BombBonus.h
    character/bonuses/HPBonus.cpp
    character/bonuses/HPBonus.h
    character/bonuses/MoneyBonus.cpp
    character/bonuses/MoneyBonus.h
    character/bonuses/PistolChargeBonus.cpp
    character/bonuses/PistolChargeBonus.h
    character/bonuses/QuadDamageBonus.cpp
    character/bonuses/QuadDamageBonus.h
    character/bonuses/RageBonus.cpp
    character/bonuses/RageBonus.h
    character/Character.cpp
    character/Character.h
    character/CharacterController.h
    character/CharacterPattern.cpp
    character/CharacterPattern.h
    character/components/Achievements.spa.h
    character/components/AnimationsBlender.cpp
    character/components/AnimationsBlender.h
    character/components/bodyparts/CharacterBlender.cpp
    character/components/bodyparts/CharacterBlender.h
    character/components/bodyparts/CharacterBodyParts.cpp
    character/components/bodyparts/CharacterBodyParts.h
    character/components/bodyparts/face/CharacterFace.cpp
    character/components/bodyparts/face/CharacterFace.h
    character/components/bodyparts/hair/CharacterHair.cpp
    character/components/bodyparts/hair/CharacterHair.h
    character/components/bodyparts/hair/CharacterRope.cpp
    character/components/bodyparts/hair/CharacterRope.h
    character/components/bodyparts/head/CharacterHeadAim.cpp
    character/components/bodyparts/head/CharacterHeadAim.h
    character/components/bodyparts/legs/CharacterLegs.cpp
    character/components/bodyparts/legs/CharacterLegs.h
    character/components/bodyparts/legs/IKSolver.cpp
    character/components/bodyparts/legs/IKSolver.h
    character/components/bodyparts/torso/CharacterTorsoAim.cpp
    character/components/bodyparts/torso/CharacterTorsoAim.h
    character/components/ButtonMG.cpp
    character/components/ButtonMG.h
    "character/components/Captain Blood.spa.h"
    character/components/CharacterAchievements.cpp
    character/components/CharacterAchievements.h
    character/components/CharacterAnimation.cpp
    character/components/CharacterAnimation.h
    character/components/CharacterAnimationEvents.cpp
    character/components/CharacterAnimationEvents.h
    character/components/CharacterArmor.cpp
    character/components/CharacterArmor.h
    character/components/CharacterInitAI.cpp
    character/components/CharacterInitAI.h
    character/components/CharacterItems.cpp
    character/components/CharacterItems.h
    character/components/CharacterLogic.cpp
    character/components/CharacterLogic.h
    character/components/CharacterPhysics.cpp
    character/components/CharacterPhysics.h
    character/components/SwordTrail.cpp
    character/components/SwordTrail.h
    "milagrosa minigame/Milagrosa Minigame.cpp"
    "milagrosa minigame/Milagrosa Minigame.h"
    player/PlayerController.cpp
    player/PlayerController.h
    Utils/SafePointerEx.h
    Utils/StorageWork.cpp
    Utils/StorageWork.h
)

set_target_properties(Character PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/modules
    LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/modules
    ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/modules
)

if(MSVC)
    target_compile_options(Character PRIVATE /wd4091)
endif()

target_include_directories(Character
    PRIVATE
    ${CMAKE_SOURCE_DIR}/ThirdParty/PhysX_281/SDKs/Physics/include
    ${CMAKE_SOURCE_DIR}/ThirdParty/PhysX_281/SDKs/Foundation/include
    ${CMAKE_SOURCE_DIR}/ThirdParty/PhysX_281/SDKs/PhysXLoader/include
    ${CMAKE_SOURCE_DIR}/ThirdParty/PhysX_281/SDKs/NxCharacter/include
)

target_compile_options(Character PRIVATE /Zc:forScope-)
