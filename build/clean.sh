#!/bin/bash

if test -f "Makefile"; then
    rm Makefile
fi

if test -f "cmake_install.cmake"; then
    rm cmake_install.cmake
fi

if test -d "CMakeFiles"; then
    rm -r CMakeFiles
fi

if test -f "CMakeCache.txt"; then
    rm CMakeCache.txt
fi

if test -f  "weblzf.js"; then
    rm weblzf.js
fi

if test -f  "weblzf.wasm"; then
    rm weblzf.wasm
fi
