conda env create -f .\test\test-environment.yml
activate test-xtensor
mkdir build
cd build
cmake -G "NMake Makefiles" -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% -D CMAKE_BUILD_TYPE=Release ..
nmake test_xtensor
.\test\test_xtensor
