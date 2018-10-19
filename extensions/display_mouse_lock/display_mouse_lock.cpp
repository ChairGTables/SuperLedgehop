// display_mouse_lock.cpp : Defines the exported functions for the DLL application.
//

#include "stdafx.h"

#define dllx extern "C" __declspec(dllexport)

/// Locks the cursor to the given rectangular area on screen.
dllx double display_mouse_lock(double x, double y, double w, double h) {
    RECT r;
    r.left = (LONG)x;
    r.top = (LONG)y;
    r.right = (LONG)(x + w);
    r.bottom = (LONG)(y + h);
    return ClipCursor(&r);
}

/// Unlocks the cursor.
dllx double display_mouse_unlock() {
    return ClipCursor(NULL);
}

dllx double display_mouse_bounds_raw(double index) {
    RECT r;
    if (!GetClipCursor(&r)) return 0;
    switch ((int)index) {
        case 0: return r.left;
        case 1: return r.top;
        case 2: return r.right - r.left;
        case 3: return r.bottom - r.top;
        case 4: return 1;
        default: return 0;
    }
}
