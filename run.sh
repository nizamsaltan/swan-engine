# Check if build directory exits
if [ ! -d "build-debug" ]; then
    mkdir build-debug
fi
# Move everything to project root to not build thing again
mv build-debug/* .

# Build
cmake ./CMakeList.txt
make

./Gazelle &

# clean up
mv Gazelle CMakeCache.txt cmake_install.cmake CMakeFiles/ ./build-debug/
