cmake_minimum_required(VERSION 3.30)

project(strmbase)

add_library(strmbase STATIC
    amextra.cpp
    amextra.h
    amfilter.cpp
    amfilter.h
    amvideo.cpp
    arithutil.cpp
    cache.h
    checkbmi.h
    combase.cpp
    combase.h
    cprop.cpp
    cprop.h
    ctlutil.cpp
    ctlutil.h
    ddmm.cpp
    ddmm.h
    dllentry.cpp
    dllsetup.cpp
    dllsetup.h
    dxmperf.h
    fourcc.h
    measure.h
    msgthrd.h
    mtype.cpp
    mtype.h
    outputq.cpp
    outputq.h
    perflog.cpp
    perflog.h
    perfstruct.h
    pstream.cpp
    pstream.h
    pullpin.cpp
    pullpin.h
    refclock.cpp
    refclock.h
    reftime.h
    renbase.cpp
    renbase.h
    schedule.cpp
    schedule.h
    seekpt.cpp
    seekpt.h
    source.cpp
    source.h
    streams.h
    strmctl.cpp
    strmctl.h
    sysclock.cpp
    sysclock.h
    transfrm.cpp
    transfrm.h
    transip.cpp
    transip.h
    videoctl.cpp
    videoctl.h
    vtrans.cpp
    vtrans.h
    winctrl.cpp
    winctrl.h
    winutil.cpp
    winutil.h
    wxdebug.cpp
    wxdebug.h
    wxlist.cpp
    wxlist.h
    wxutil.cpp
    wxutil.h
)
target_compile_definitions(strmbase PRIVATE NOMINMAX)
if(BUILD_SHARED_LIBS)
    target_compile_definitions(strmbase PRIVATE FILTER_DLL)
endif()
target_include_directories(strmbase PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(strmbase PRIVATE winmm strmiids)