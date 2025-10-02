#!/bin/bash -ev

scriptDir=$(dirname "${BASH_SOURCE[0]}")

rm -rf "${scriptDir}/.bld_xmrig"
cmake -S "${scriptDir}/rep" -B "${scriptDir}/.bld_xmrig" -D"CMAKE_INSTALL_PREFIX=${scriptDir}"
cmake --build "${scriptDir}/.bld_xmrig" --config=Release --parallel $(nproc)
