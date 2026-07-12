project(CaptainBlood)

add_executable(CaptainBlood WIN32
    sources/DBG/Debugger.cpp
    sources/DBG/MiniDump.cpp
    sources/DBG/Symbols.cpp
    sources/Game.cpp
    sources/Main.cpp
    sources/WheatyExceptionReport.cpp
    modules/Shaders/functions.h
    modules/Shaders/gmxService/gmx_Pack.h
    modules/Shaders/gmxService/gmx_Structs.h
    modules/Shaders/gmxService/gmx_UberGenerator.h
    modules/Shaders/gmxService/gmx_UberShader.h
    modules/Shaders/gmxService/gmx_Variables.h
    modules/Shaders/gmxService/gmx_VertexShader.h
    modules/Shaders/gmxService/gmx_VertexShaderAnim.h
    modules/Shaders/GUI/GUI_Common.h
    modules/Shaders/Ocean/Ocean.h
    modules/Shaders/Particles/ParticlesCommon.h
    modules/Shaders/Particles/ParticlesPixelShader.h
    modules/Shaders/Particles/ParticlesStruct.h
    modules/Shaders/Particles/ParticlesVertexShader.h
    modules/Shaders/PostEffects/common.h
    modules/Shaders/PostProcess/common.h
    modules/Shaders/Shadows/shd_Variables.h
    modules/Shaders/shadows_pssm/pssm_vars.h
    modules/Shaders/stdvariables.h
    modules/Shaders/technique.h
    sources/afxres.h
    sources/DBG/Debugger.h
    sources/DBG/MiniDump.h
    sources/DBG/Symbols.h
    sources/Game.h
    sources/MutexProtector.h
    sources/resource.h
    sources/WheatyExceptionReport.h
    sources/cursor1.cur
    sources/Captain_Blood.ico
    sources/icon1.ico
    sources/test.ini
    sources/resource.rc
)

set_target_properties(CaptainBlood PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}
    LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}
    ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}
)
