#!/bin/bash -ev

rm -rf bld
cmake -S rep -B bld -D"CMAKE_INSTALL_PREFIX=."
cmake --build bld --parallel $(nproc)
