#!/bin/bash -ev

scriptDir=$(dirname "${BASH_SOURCE[0]}")

rm -rf "${scriptDir}/bld"
cmake -S "${scriptDir}/rep" -B "${scriptDir}/bld" -D"CMAKE_INSTALL_PREFIX=${scriptDir}"
cmake --build "${scriptDir}/bld" --parallel $(nproc)
