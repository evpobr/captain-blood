#pragma once

#ifndef _XBOX

#include <windows.h>

// Detects if running on Windows Vista (6.0) or later (WDDM driver model).
// On Vista+, D3DPOOL_DEFAULT is safe and preferred.
// On XP (XDDM), D3DPOOL_MANAGED is required for device loss resilience.
//
// Uses GetVersion() which returns:
//   LowWord = major version in low byte, minor version in high byte
//   Vista = 6.0 = 0x0600
inline bool IsVistaOrLater()
{
#pragma warning(push)
#pragma warning(disable: 4996) // 'GetVersion' was declared deprecated
	DWORD dwVersion = ::GetVersion();
#pragma warning(pop)

	DWORD dwMajor = (DWORD)(LOBYTE(LOWORD(dwVersion)));
	return dwMajor >= 6;
}

#else
// Xbox 360 is not Vista+
inline bool IsVistaOrLater() { return false; }
#endif