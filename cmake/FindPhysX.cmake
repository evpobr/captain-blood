set(PhysX_DEFAULT_COMPONENTS
    Cooking
    Character
)

if(PhysX_FIND_COMPONENTS)
    set(PhysX_COMPONENT_NAMES ${PhysX_FIND_COMPONENTS})
else()
    set(PhysX_COMPONENT_NAMES ${PhysX_DEFAULT_COMPONENTS})
endif()

find_path(PhysX_Foundation_INCLUDE_DIR NAMES Nx.h HINTS PhysX_ROOT PATH_SUFFIXES Foundation/include)
find_path(PhysX_Loader_INCLUDE_DIR NAMES PhysXLoader.h HINTS PhysX_ROOT PATH_SUFFIXES PhysXLoader/include)
find_path(PhysX_Physics_INCLUDE_DIR NAMES NxPhysics.h HINTS PhysX_ROOT PATH_SUFFIXES Physics/include)
find_library(PhysX_Core_LIBRARY NAMES PhysXCore PATH_SUFFIXES Win32)
find_library(PhysX_Loader_LIBRARY NAMES PhysXLoader PATH_SUFFIXES Win32)

set(PhysX_INCLUDE_DIRS ${PhysX_Foundation_INCLUDE_DIR} ${PhysX_Loader_INCLUDE_DIR} ${PhysX_Physics_INCLUDE_DIR})

set(PhysX_LIBRARIES ${PhysX_Core_LIBRARY} ${PhysX_Loader_LIBRARY})

if("Cooking" IN_LIST PhysX_COMPONENT_NAMES)
    find_path(PhysX_Cooking_INCLUDE_DIR NAMES NxCooking.h HINTS PhysX_ROOT PATH_SUFFIXES Cooking/include)
    if(PhysX_Cooking_INCLUDE_DIR)
        list(APPEND PhysX_INCLUDE_DIRS ${PhysX_Cooking_INCLUDE_DIR})
    endif()

    find_library(PhysX_Cooking_LIBRARY NAMES PhysXCooking PATH_SUFFIXES Win32)
    find_library(PhysX_NxCooking_LIBRARY NAMES NxCooking PATH_SUFFIXES Win32)

    if(PhysX_Cooking_LIBRARY)
        list(APPEND PhysX_LIBRARIES ${PhysX_Cooking_LIBRARY})
    endif()
    if(PhysX_NxCooking_LIBRARY)
        list(APPEND PhysX_LIBRARIES ${PhysX_NxCooking_LIBRARY})
    endif()

    if(PhysX_Cooking_INCLUDE_DIR AND (PhysX_Cooking_LIBRARY OR PhysX_NxCooking_LIBRARY))
        set(PhysX_Cooking_FOUND TRUE)
    endif()
endif()

if("Character" IN_LIST PhysX_COMPONENT_NAMES)
    find_path(PhysX_Character_INCLUDE_DIR NAMES NxCharacter.h HINTS PhysX_ROOT PATH_SUFFIXES NxCharacter/include)
    if(PhysX_Character_INCLUDE_DIR)
        list(APPEND PhysX_INCLUDE_DIRS ${PhysX_Character_INCLUDE_DIR})
    endif()
    find_library(PhysX_Character_LIBRARY NAMES NxCharacter PATH_SUFFIXES Win32)
    if(PhysX_Character_LIBRARY)
        list(APPEND PhysX_LIBRARIES ${PhysX_Character_LIBRARY})
    endif()
    if(PhysX_Character_INCLUDE_DIR AND PhysX_Character_LIBRARY)
        set(PhysX_Character_FOUND TRUE)
    endif()
endif()

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(PhysX
    REQUIRED_VARS PhysX_LIBRARIES PhysX_INCLUDE_DIRS
    HANDLE_COMPONENTS
)

if(PhysX_FOUND AND NOT TARGET PhysX::PhysX)
    add_library(PhysX::PhysX INTERFACE IMPORTED)
    set_target_properties(PhysX::PhysX PROPERTIES
        INTERFACE_INCLUDE_DIRECTORIES "${PhysX_INCLUDE_DIRS}"
    )

    if(PhysX_Loader_LIBRARY)
        target_link_libraries(PhysX::PhysX INTERFACE "${PhysX_Loader_LIBRARY}")
    endif()

    if(PhysX_Core_LIBRARY)
        target_link_libraries(PhysX::PhysX INTERFACE "${PhysX_Core_LIBRARY}")
    endif()
    
    if(PhysX_Cooking_FOUND)
        if(PhysX_Cooking_LIBRARY)
            target_link_libraries(PhysX::PhysX INTERFACE "${PhysX_Cooking_LIBRARY}")
        endif()
        if(PhysX_NxCooking_LIBRARY)
            target_link_libraries(PhysX::PhysX INTERFACE "${PhysX_NxCooking_LIBRARY}")
        endif()
    endif()

    if(PhysX_Character_FOUND)
        target_link_libraries(PhysX::PhysX INTERFACE "${PhysX_Character_LIBRARY}")
    endif()

endif()
