project(Systems)

find_program(FXC_EXECUTABLE fxc.exe HINTS ${CMAKE_SOURCE_DIR}/ThirdParty/D3D9/Bin)

add_library(Systems SHARED
    AnimationService/Animation.cpp
    AnimationService/Animation.h
    AnimationService/AnimationProcedural.cpp
    AnimationService/AnimationProcedural.h
    AnimationService/AnimationService.cpp
    AnimationService/AnimationService.h
    AnimationService/anxanimation/AnxAnimation.cpp
    AnimationService/anxanimation/AnxAnimation.h
    AnimationService/anxanimation/AnxData.cpp
    AnimationService/anxanimation/AnxData.h
    AnimationService/anxanimation/AnxFileFormat.h
    AnimationService/anxanimation/AnxPlayer.cpp
    AnimationService/anxanimation/AnxPlayer.h
    AnimationService/IAnxEditorServiceAccess.h
    Controls/ControlsIniParser.cpp
    Controls/ControlsIniParser.h
    Controls/ControlsManager.cpp
    Controls/ControlsManager.h
    Controls/ControlsTrigger.cpp
    Controls/ControlsTrigger.h
    Controls/device.h
    Controls/Force.cpp
    Controls/Force.h
    Controls/JoystickDevice.cpp
    Controls/JoystickDevice.h
    Controls/JoystickManager.cpp
    Controls/JoystickManager.h
    Controls/KeyboardDevice.cpp
    Controls/KeyboardDevice.h
    Controls/MouseDevice.cpp
    Controls/MouseDevice.h
    Controls/pc.cpp
    Controls/pc.h
    Controls/utils.cpp
    Controls/utils.h
    Controls/XBoxDevice.cpp
    Controls/XBoxDevice.h
    Controls/XBoxKeyboard.cpp
    Controls/XBoxKeyboard.h
    Core/Core.cpp
    Core/Core.h
    Core/CoreBase.h
    Core/CoreMain.cpp
    Core/CoreStorage.cpp
    Core/CoreStorage.h
    Core/CoreStorageFolder.cpp
    Core/CoreStorageFolder.h
    Core/DllManager.cpp
    Core/DllManager.h
    Core/ExecutionModule.cpp
    Core/ExecutionModule.h
    Core/MemoryManager.cpp
    Core/MemoryManager.h
    Core/ObjectsDeclarators.cpp
    Core/ObjectsDeclarators.h
    Core/PerformanceCounters.cpp
    Core/PerformanceCounters.h
    Core/RegistryKeyAccessor.h
    FileService/Archivator.cpp
    FileService/Archivator.h
    FileService/DataFile.cpp
    FileService/DataFile.h
    FileService/File.cpp
    FileService/File.h
    FileService/FileService.cpp
    FileService/FileService.h
    FileService/FilesTree.cpp
    FileService/FilesTree.h
    FileService/Finder.cpp
    FileService/Finder.h
    FileService/IniFile.cpp
    FileService/IniFile.h
    FileService/IniParser.cpp
    FileService/IniParser.h
    FileService/LoadBuffer.cpp
    FileService/LoadBuffer.h
    FileService/MirrorPath.cpp
    FileService/MirrorPath.h
    FileService/PackFile.cpp
    FileService/PackFile.h
    GMXService/blendShapeMixer.cpp
    GMXService/blendShapeMixer.h
    GMXService/gmxService.cpp
    GMXService/gmxService.h
    GMXService/mesh_data.h
    GMXService/meshContainer.cpp
    GMXService/meshContainer.h
    GMXService/meshInstance.cpp
    GMXService/meshInstance.h
    LocStrings/LocStrings.cpp
    LocStrings/LocStrings.h
    SoundService/FxBase.cpp
    SoundService/FxBase.h
    SoundService/FxPremaster.cpp
    SoundService/FxPremaster.h
    SoundService/FxScene.cpp
    SoundService/FxScene.h
    SoundService/FxVoice.cpp
    SoundService/FxVoice.h
    SoundService/ISoundEditorAccessor.h
    SoundService/Sound.cpp
    SoundService/Sound.h
    SoundService/SoundBankFile.h
    SoundService/SoundBanks.cpp
    SoundService/SoundBanks.h
    SoundService/SoundEditorAccessor.cpp
    SoundService/SoundEditorAccessor.h
    SoundService/SoundOff.h
    SoundService/SoundScene.cpp
    SoundService/SoundScene.h
    SoundService/SoundsEngine.cpp
    SoundService/SoundsEngine.h
    SoundService/SoundService.cpp
    SoundService/SoundService.h
    SoundService/UnitTests/SoundServiceUnitTests.h
    SoundService/UnitTests/UnitTestWaveSelectors.cpp
    xboxlive/ILiveManager.h
    xboxlive/LiveService.cpp
    xboxlive/LiveService.h
    xboxlive/marketplace/ContentGUIUpdater.cpp
    xboxlive/marketplace/ContentGUIUpdater.h
    xboxlive/marketplace/contentmanager.cpp
    xboxlive/marketplace/contentmanager.h
    xboxlive/marketplace/contenttest.cpp
    xboxlive/marketplace/contenttest.h
    xboxlive/marketplace/defines.h
    xboxlive/marketplace/icontent.h
    xboxlive/marketplace/ILiveService.h
    xboxlive/marketplace/pc/PCContentEnumerator.cpp
    xboxlive/marketplace/pc/PCContentEnumerator.h
    xboxlive/marketplace/pc/PCLiveService.cpp
    xboxlive/marketplace/pc/PCLiveService.h
    xboxlive/marketplace/xbox/content.cpp
    xboxlive/marketplace/xbox/content.h
    xboxlive/marketplace/xbox/ContentEnumerator.cpp
    xboxlive/marketplace/xbox/ContentEnumerator.h
    xboxlive/marketplace/xbox/DownloadEnumerator.cpp
    xboxlive/marketplace/xbox/DownloadEnumerator.h
    xboxlive/objects/LiveServiceTrigger.cpp
    xboxlive/objects/LiveServiceTrigger.h
    xboxlive/pc/PCLiveManager.cpp
    xboxlive/pc/PCLiveManager.h
    xboxlive/pc/pcutils_temp/utils_temp.cpp
    xboxlive/pc/pcutils_temp/utils_temp.h
    xboxlive/pc/steam/isteamapps.h
    xboxlive/pc/steam/isteamclient.h
    xboxlive/pc/steam/isteamfriends.h
    xboxlive/pc/steam/isteamgameserver.h
    xboxlive/pc/steam/isteammasterserverupdater.h
    xboxlive/pc/steam/isteammatchmaking.h
    xboxlive/pc/steam/isteamnetworking.h
    xboxlive/pc/steam/isteamremotestorage.h
    xboxlive/pc/steam/isteamuser.h
    xboxlive/pc/steam/isteamuserstats.h
    xboxlive/pc/steam/isteamutils.h
    xboxlive/pc/steam/matchmakingtypes.h
    xboxlive/pc/steam/steam_api.h
    xboxlive/pc/steam/steam_gameserver.h
    xboxlive/pc/steam/steamclientpublic.h
    xboxlive/pc/steam/steamtypes.h
    xboxlive/pc/steam_wraper.cpp
    xboxlive/pc/steam_wraper.h
    xboxlive/xbox/XboxLiveManager.cpp
    xboxlive/xbox/XboxLiveManager.h
    XRender/advfont/AdvFont.cpp
    XRender/advfont/AdvFont.h
    XRender/advfont/AdvFontsManager.cpp
    XRender/advfont/AdvFontsManager.h
    XRender/atomicI32.h
    XRender/batch/CommandBufferExecutor.cpp
    XRender/batch/CommandBufferExecutor.h
    XRender/batch/gpu_structs.h
    XRender/batch/PrecompiledBatch.cpp
    XRender/batch/PrecompiledBatch.h
    XRender/capsule/Capsule.cpp
    XRender/capsule/Capsule.h
    XRender/commandbuffers/CommandBufferCompiler.cpp
    XRender/commandbuffers/CommandBufferCompiler.h
    XRender/CompilerMode.h
    XRender/D3D9SyncCode.h
    XRender/D3DConvertor.h
    XRender/defaultstates/DefaultStates.cpp
    XRender/defaultstates/DefaultStates.h
    XRender/device/IDevice.h
    XRender/device/PC_Device.cpp
    XRender/device/PC_Device.h
    XRender/device/X360_Device.cpp
    XRender/device/X360_Device.h
    XRender/Draw.cpp
    XRender/fonts/CFont.cpp
    XRender/fonts/Font.cpp
    XRender/fonts/Font.h
    XRender/fonts/RFont.cpp
    XRender/GraphicsApi.h
    XRender/indexbuffers/IBuffer.cpp
    XRender/indexbuffers/IBuffer.h
    XRender/MaxLights.h
    XRender/mediaplayer/XBoxMediaPlayer.cpp
    XRender/mediaplayer/XBoxMediaPlayer.h
    XRender/Query/OcclusionQuery.cpp
    XRender/Query/OcclusionQuery.h
    XRender/Render.cpp
    XRender/Render.h
    XRender/rendertargets/RenderTarget.cpp
    XRender/rendertargets/RenderTarget.h
    XRender/rendertargets/RenderTargetDepth.cpp
    XRender/rendertargets/RenderTargetDepth.h
    XRender/Resource.cpp
    XRender/Resource.h
    XRender/shaders/changelist/ChangeList.cpp
    XRender/shaders/changelist/ChangeList.h
    XRender/shaders/IncludeHandler.cpp
    XRender/shaders/IncludeHandler.h
    XRender/shaders/Shader.cpp
    XRender/shaders/Shader.h
    XRender/shaders/ShaderManager.cpp
    XRender/shaders/ShaderManager.h
    XRender/shaders/ShaderVar.cpp
    XRender/shaders/ShaderVar.h
    XRender/shaders/statefilter/StateFilter.cpp
    XRender/shaders/statefilter/StateFilter.h
    XRender/textures/BaseTexture.cpp
    XRender/textures/BaseTexture.h
    XRender/textures/Texture.cpp
    XRender/textures/Texture.h
    XRender/TXX.h
    XRender/TXXLoader.cpp
    XRender/TXXLoader.h
    XRender/VariablesDB.cpp
    XRender/VariablesDB.h
    XRender/vertexbuffers/VBuffer.cpp
    XRender/vertexbuffers/VBuffer.h
    XRender/VideoCodec/DShowTextures.cpp
    XRender/VideoCodec/DShowTextures.h
    XRender/VideoCodec/wmvcodec.cpp
    XRender/VideoCodec/wmvcodec.h
    XRender/VideoCodec/wmvgraph.cpp
    XRender/VideoCodec/wmvgraph.h
    XRender/VideoCodec/wmvinterfaces.h
    XRender/VideoCodec/xmvcodec.cpp
    XRender/VideoCodec/xmvcodec.h
    # XRender/X360TexConvertor.cpp
    # XRender/X360TexConvertor.h
    XRender/xliveshower/IXLiveShower.h
    XRender/xliveshower/XLiveShowerPC.cpp
    XRender/xliveshower/XLiveShowerPC.h
    ${CMAKE_SOURCE_DIR}/common_h/compression/Compressor.cpp
    ${CMAKE_SOURCE_DIR}/common_h/compression/Compressor.h
    ${CMAKE_SOURCE_DIR}/common_h/compression/XCompressor.cpp
    ${CMAKE_SOURCE_DIR}/common_h/compression/XCompressor.h
)

set_target_properties(Systems PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/modules
    LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/modules
    ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/modules
)

target_include_directories(Systems
    PRIVATE
    BEFORE ${CMAKE_SOURCE_DIR}/ThirdParty/D3D9/Include
)

target_link_directories(Systems
    PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}
    BEFORE ${CMAKE_SOURCE_DIR}/ThirdParty/D3D9/Lib/x86
)

target_link_libraries(Systems
    PRIVATE
    optimized d3d9
    optimized d3dx9
    debug d3dx9d
    legacy_stdio_definitions
    strmbase
)

add_dependencies(Systems strmbase)

if(MSVC)
    target_compile_options(Systems PRIVATE /wd4091)
endif()

target_compile_options(Systems PRIVATE /Zc:forScope-)

set(SHADER_SOURCES
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/arcadesea/Sail.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/arcadesea/ShipsBatching.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/arcadesea/TargetPoints.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/bloodstains/BloodStains.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/bonus/bonus.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/Camera/BloodPuff.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/circularbar.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/damageeffect/DamageEffect.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/Debug/dbgInfoSprite.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/Debug/dbgLine.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/Debug/dbgRects.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/Debug/dbgSolidBox.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/Debug/dbgSphere.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/Debug/Physics.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/Debug/stdPolygon.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/Editor/AnxEditor.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/Editor/GridLine.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/Editor/LineNoZ.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/editorfont.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/editoroccluder.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/edramrestore.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/FlatSea/FlatSea.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/fly/Fly.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/font.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/gmxService/Shaders/Background.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/gmxService/Shaders/Debug/showbatches.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/gmxService/Shaders/Debug/ShowBiNormals.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/gmxService/Shaders/Debug/showdiffuse.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/gmxService/Shaders/Debug/showgloss.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/gmxService/Shaders/Debug/showLightcomplex.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/gmxService/Shaders/Debug/shownormalmap.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/gmxService/Shaders/Debug/ShowNormals.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/gmxService/Shaders/Debug/showocclusion.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/gmxService/Shaders/Debug/ShowOverDraw.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/gmxService/Shaders/Debug/showparralax.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/gmxService/Shaders/Debug/showshinines.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/gmxService/Shaders/Debug/ShowTangents.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/gmxService/Shaders/Decal.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/gmxService/Shaders/dummy.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/gmxService/Shaders/DynamicLight.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/gmxService/Shaders/foam.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/gmxService/Shaders/foliage.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/gmxService/Shaders/Grass.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/gmxService/Shaders/LightMap.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/gmxService/Shaders/Overlay.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/gmxService/Shaders/shaders.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/gmxService/Shaders/singletexture.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/gmxService/Shaders/VolumetricRays.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/gmxService/Shaders/WeaponSFX.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/GUI/GUI_Base.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/GUI/GUI_Quad.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/GUI/GUI_Selected.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/GUI/GUI_Sprite.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/gui_font.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/histogram/histogram.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/interface/interface.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/interface/taskpointer.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/localeffect/Cloud.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/localeffect/Grass2.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/localeffect/LocalEffect.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/mobjects/BulletTrace.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/mobjects/camerafrustum.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/mobjects/detectors.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/mobjects/Flare.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/mobjects/Lights.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/mobjects/ShooterTrace.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/Ocean/Ocean.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/Ocean/Ocean3.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/Ocean/Skydome.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/Ocean/SkyFog.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/Particles/Types/Particles.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/PostEffects/DOF.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/PostEffects/gaussblur.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/PostEffects/glow.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/PostEffects/glowobjects.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/PostEffects/RadialBlur.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/PostEffects/Sharpness.fx
    # ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/PostProcess/black/black.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/PostProcess/FillScreen.fx
    # ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/PostProcess/glow/glow.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/PostProcess/Line.fx
    # ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/PostProcess/motion/motion.fx
    # ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/PostProcess/sharp/sharp.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/PostProcess/splash/splash.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/ragdoll/ragdoll.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/rain/rain.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/shadows_pssm/Blur/Blur.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/shadows_pssm/MultiTex/pssm_mt_cast.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/shadows_pssm/MultiTex/pssm_mt_recv.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/shadows_pssm/Projected/pssm_proj.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/shadows_pssm/Projected/pssm_proj_cast.fx
    # ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/shadows_pssm/SingleTex/pssm_st_cast.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/shadows_pssm/SingleTex/pssm_st_recv.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/shadows_pssm/zpass.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/SUN/bb_structs.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/taskviewer.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/trail/Trail.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/video.fx
    ${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders/WaterTracks/SeaTrack.fx
)

# Базовая папка для поиска инклудов компилятором
set(BASE_SHADERS_SRC_DIR "${CMAKE_SOURCE_DIR}/ENGINE/modules/Shaders")

# Находим все .fx файлы автоматически (как в ShaderManager::Compile)
file(GLOB_RECURSE FX_FILES "${BASE_SHADERS_SRC_DIR}/*.fx")
file(GLOB_RECURSE FXH_FILES "${BASE_SHADERS_SRC_DIR}/*.fxh" "${BASE_SHADERS_SRC_DIR}/*.h")

# Копируем .fx и .h файлы в папку Build\modules\Shaders
# Игра ищет шейдеры в modules\Shaders (относительно рабочей директории)
# При запуске из Build\ путь modules\Shaders = Build\modules\Shaders\
set(DEST_ROOT "${CMAKE_BINARY_DIR}/../Build/modules")
foreach(FX_FILE ${FX_FILES})
    file(RELATIVE_PATH REL_PATH "${BASE_SHADERS_SRC_DIR}" "${FX_FILE}")
    set(DEST_FILE "${DEST_ROOT}/Shaders/${REL_PATH}")
    get_filename_component(DEST_DIR "${DEST_FILE}" DIRECTORY)
    
    add_custom_command(
        OUTPUT "${DEST_FILE}"
        COMMAND ${CMAKE_COMMAND} -E make_directory "${DEST_DIR}"
        COMMAND ${CMAKE_COMMAND} -E copy_if_different "${FX_FILE}" "${DEST_FILE}"
        DEPENDS "${FX_FILE}"
        COMMENT "Copying shader: ${REL_PATH}"
    )
    list(APPEND FX_FILES_DEST "${DEST_FILE}")
endforeach()

foreach(FXH_FILE ${FXH_FILES})
    file(RELATIVE_PATH REL_PATH "${BASE_SHADERS_SRC_DIR}" "${FXH_FILE}")
    set(DEST_FILE "${DEST_ROOT}/Shaders/${REL_PATH}")
    get_filename_component(DEST_DIR "${DEST_FILE}" DIRECTORY)
    
    add_custom_command(
        OUTPUT "${DEST_FILE}"
        COMMAND ${CMAKE_COMMAND} -E make_directory "${DEST_DIR}"
        COMMAND ${CMAKE_COMMAND} -E copy_if_different "${FXH_FILE}" "${DEST_FILE}"
        DEPENDS "${FXH_FILE}"
        COMMENT "Copying include: ${REL_PATH}"
    )
    list(APPEND FX_FILES_DEST "${DEST_FILE}")
endforeach()

add_custom_target(CompileShaders DEPENDS ${FX_FILES_DEST})
add_dependencies(Systems CompileShaders)