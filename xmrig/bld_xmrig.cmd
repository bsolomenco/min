set scriptDir=%~p0
rem echo %scriptDir%

rd /Q/S "%scriptDir%.bld_xmrig"
cmake.exe -S "%scriptDir%\rep" -B "%scriptDir%\.bld_xmrig" -A x64 -DXMRIG_DEPS=C:\Prj\Min\xmrig\deps\msvc2022\x64 -D"CMAKE_INSTALL_PREFIX=%scriptDir%"
cmake.exe --build "%scriptDir%\.bld_xmrig" --config=Release --parallel
