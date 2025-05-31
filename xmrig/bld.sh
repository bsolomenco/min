#!/bin/bash -ev

scriptDir=$(dirname "${BASH_SOURCE[0]}")

rm -rf "${scriptDir}/.bld_xmrig"
cmake -S "${scriptDir}/rep" -B "${scriptDir}/.bld_xmrig" -D"CMAKE_INSTALL_PREFIX=${scriptDir}"
cmake --build "${scriptDir}/.bld_xmrig" --config=Release --parallel $(nproc)

rm -rf "${scriptDir}/.bld_cuda"
cmake -S "${scriptDir}/cuda" -B "${scriptDir}/.bld_cuda" -D"CMAKE_INSTALL_PREFIX=${scriptDir}"
cmake --build "${scriptDir}/.bld_cuda" --config=Release --parallel $(nproc)
