# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nizam/Documents/GitHub/swan-engine

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nizam/Documents/GitHub/swan-engine

# Include any dependencies generated for this target.
include CMakeFiles/Gazelle.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Gazelle.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Gazelle.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Gazelle.dir/flags.make

CMakeFiles/Gazelle.dir/lib/glad.c.o: CMakeFiles/Gazelle.dir/flags.make
CMakeFiles/Gazelle.dir/lib/glad.c.o: lib/glad.c
CMakeFiles/Gazelle.dir/lib/glad.c.o: CMakeFiles/Gazelle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nizam/Documents/GitHub/swan-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Gazelle.dir/lib/glad.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Gazelle.dir/lib/glad.c.o -MF CMakeFiles/Gazelle.dir/lib/glad.c.o.d -o CMakeFiles/Gazelle.dir/lib/glad.c.o -c /home/nizam/Documents/GitHub/swan-engine/lib/glad.c

CMakeFiles/Gazelle.dir/lib/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Gazelle.dir/lib/glad.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nizam/Documents/GitHub/swan-engine/lib/glad.c > CMakeFiles/Gazelle.dir/lib/glad.c.i

CMakeFiles/Gazelle.dir/lib/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Gazelle.dir/lib/glad.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nizam/Documents/GitHub/swan-engine/lib/glad.c -o CMakeFiles/Gazelle.dir/lib/glad.c.s

CMakeFiles/Gazelle.dir/src/main.cpp.o: CMakeFiles/Gazelle.dir/flags.make
CMakeFiles/Gazelle.dir/src/main.cpp.o: src/main.cpp
CMakeFiles/Gazelle.dir/src/main.cpp.o: CMakeFiles/Gazelle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nizam/Documents/GitHub/swan-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Gazelle.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Gazelle.dir/src/main.cpp.o -MF CMakeFiles/Gazelle.dir/src/main.cpp.o.d -o CMakeFiles/Gazelle.dir/src/main.cpp.o -c /home/nizam/Documents/GitHub/swan-engine/src/main.cpp

CMakeFiles/Gazelle.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Gazelle.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nizam/Documents/GitHub/swan-engine/src/main.cpp > CMakeFiles/Gazelle.dir/src/main.cpp.i

CMakeFiles/Gazelle.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Gazelle.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nizam/Documents/GitHub/swan-engine/src/main.cpp -o CMakeFiles/Gazelle.dir/src/main.cpp.s

CMakeFiles/Gazelle.dir/src/engine/ui/EngineUI.cpp.o: CMakeFiles/Gazelle.dir/flags.make
CMakeFiles/Gazelle.dir/src/engine/ui/EngineUI.cpp.o: src/engine/ui/EngineUI.cpp
CMakeFiles/Gazelle.dir/src/engine/ui/EngineUI.cpp.o: CMakeFiles/Gazelle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nizam/Documents/GitHub/swan-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Gazelle.dir/src/engine/ui/EngineUI.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Gazelle.dir/src/engine/ui/EngineUI.cpp.o -MF CMakeFiles/Gazelle.dir/src/engine/ui/EngineUI.cpp.o.d -o CMakeFiles/Gazelle.dir/src/engine/ui/EngineUI.cpp.o -c /home/nizam/Documents/GitHub/swan-engine/src/engine/ui/EngineUI.cpp

CMakeFiles/Gazelle.dir/src/engine/ui/EngineUI.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Gazelle.dir/src/engine/ui/EngineUI.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nizam/Documents/GitHub/swan-engine/src/engine/ui/EngineUI.cpp > CMakeFiles/Gazelle.dir/src/engine/ui/EngineUI.cpp.i

CMakeFiles/Gazelle.dir/src/engine/ui/EngineUI.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Gazelle.dir/src/engine/ui/EngineUI.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nizam/Documents/GitHub/swan-engine/src/engine/ui/EngineUI.cpp -o CMakeFiles/Gazelle.dir/src/engine/ui/EngineUI.cpp.s

CMakeFiles/Gazelle.dir/src/engine/FrameBuffer.cpp.o: CMakeFiles/Gazelle.dir/flags.make
CMakeFiles/Gazelle.dir/src/engine/FrameBuffer.cpp.o: src/engine/FrameBuffer.cpp
CMakeFiles/Gazelle.dir/src/engine/FrameBuffer.cpp.o: CMakeFiles/Gazelle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nizam/Documents/GitHub/swan-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Gazelle.dir/src/engine/FrameBuffer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Gazelle.dir/src/engine/FrameBuffer.cpp.o -MF CMakeFiles/Gazelle.dir/src/engine/FrameBuffer.cpp.o.d -o CMakeFiles/Gazelle.dir/src/engine/FrameBuffer.cpp.o -c /home/nizam/Documents/GitHub/swan-engine/src/engine/FrameBuffer.cpp

CMakeFiles/Gazelle.dir/src/engine/FrameBuffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Gazelle.dir/src/engine/FrameBuffer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nizam/Documents/GitHub/swan-engine/src/engine/FrameBuffer.cpp > CMakeFiles/Gazelle.dir/src/engine/FrameBuffer.cpp.i

CMakeFiles/Gazelle.dir/src/engine/FrameBuffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Gazelle.dir/src/engine/FrameBuffer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nizam/Documents/GitHub/swan-engine/src/engine/FrameBuffer.cpp -o CMakeFiles/Gazelle.dir/src/engine/FrameBuffer.cpp.s

CMakeFiles/Gazelle.dir/include/imgui/imgui.cpp.o: CMakeFiles/Gazelle.dir/flags.make
CMakeFiles/Gazelle.dir/include/imgui/imgui.cpp.o: include/imgui/imgui.cpp
CMakeFiles/Gazelle.dir/include/imgui/imgui.cpp.o: CMakeFiles/Gazelle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nizam/Documents/GitHub/swan-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Gazelle.dir/include/imgui/imgui.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Gazelle.dir/include/imgui/imgui.cpp.o -MF CMakeFiles/Gazelle.dir/include/imgui/imgui.cpp.o.d -o CMakeFiles/Gazelle.dir/include/imgui/imgui.cpp.o -c /home/nizam/Documents/GitHub/swan-engine/include/imgui/imgui.cpp

CMakeFiles/Gazelle.dir/include/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Gazelle.dir/include/imgui/imgui.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nizam/Documents/GitHub/swan-engine/include/imgui/imgui.cpp > CMakeFiles/Gazelle.dir/include/imgui/imgui.cpp.i

CMakeFiles/Gazelle.dir/include/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Gazelle.dir/include/imgui/imgui.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nizam/Documents/GitHub/swan-engine/include/imgui/imgui.cpp -o CMakeFiles/Gazelle.dir/include/imgui/imgui.cpp.s

CMakeFiles/Gazelle.dir/include/imgui/imgui_demo.cpp.o: CMakeFiles/Gazelle.dir/flags.make
CMakeFiles/Gazelle.dir/include/imgui/imgui_demo.cpp.o: include/imgui/imgui_demo.cpp
CMakeFiles/Gazelle.dir/include/imgui/imgui_demo.cpp.o: CMakeFiles/Gazelle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nizam/Documents/GitHub/swan-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Gazelle.dir/include/imgui/imgui_demo.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Gazelle.dir/include/imgui/imgui_demo.cpp.o -MF CMakeFiles/Gazelle.dir/include/imgui/imgui_demo.cpp.o.d -o CMakeFiles/Gazelle.dir/include/imgui/imgui_demo.cpp.o -c /home/nizam/Documents/GitHub/swan-engine/include/imgui/imgui_demo.cpp

CMakeFiles/Gazelle.dir/include/imgui/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Gazelle.dir/include/imgui/imgui_demo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nizam/Documents/GitHub/swan-engine/include/imgui/imgui_demo.cpp > CMakeFiles/Gazelle.dir/include/imgui/imgui_demo.cpp.i

CMakeFiles/Gazelle.dir/include/imgui/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Gazelle.dir/include/imgui/imgui_demo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nizam/Documents/GitHub/swan-engine/include/imgui/imgui_demo.cpp -o CMakeFiles/Gazelle.dir/include/imgui/imgui_demo.cpp.s

CMakeFiles/Gazelle.dir/include/imgui/imgui_draw.cpp.o: CMakeFiles/Gazelle.dir/flags.make
CMakeFiles/Gazelle.dir/include/imgui/imgui_draw.cpp.o: include/imgui/imgui_draw.cpp
CMakeFiles/Gazelle.dir/include/imgui/imgui_draw.cpp.o: CMakeFiles/Gazelle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nizam/Documents/GitHub/swan-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Gazelle.dir/include/imgui/imgui_draw.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Gazelle.dir/include/imgui/imgui_draw.cpp.o -MF CMakeFiles/Gazelle.dir/include/imgui/imgui_draw.cpp.o.d -o CMakeFiles/Gazelle.dir/include/imgui/imgui_draw.cpp.o -c /home/nizam/Documents/GitHub/swan-engine/include/imgui/imgui_draw.cpp

CMakeFiles/Gazelle.dir/include/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Gazelle.dir/include/imgui/imgui_draw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nizam/Documents/GitHub/swan-engine/include/imgui/imgui_draw.cpp > CMakeFiles/Gazelle.dir/include/imgui/imgui_draw.cpp.i

CMakeFiles/Gazelle.dir/include/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Gazelle.dir/include/imgui/imgui_draw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nizam/Documents/GitHub/swan-engine/include/imgui/imgui_draw.cpp -o CMakeFiles/Gazelle.dir/include/imgui/imgui_draw.cpp.s

CMakeFiles/Gazelle.dir/include/imgui/imgui_tables.cpp.o: CMakeFiles/Gazelle.dir/flags.make
CMakeFiles/Gazelle.dir/include/imgui/imgui_tables.cpp.o: include/imgui/imgui_tables.cpp
CMakeFiles/Gazelle.dir/include/imgui/imgui_tables.cpp.o: CMakeFiles/Gazelle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nizam/Documents/GitHub/swan-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Gazelle.dir/include/imgui/imgui_tables.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Gazelle.dir/include/imgui/imgui_tables.cpp.o -MF CMakeFiles/Gazelle.dir/include/imgui/imgui_tables.cpp.o.d -o CMakeFiles/Gazelle.dir/include/imgui/imgui_tables.cpp.o -c /home/nizam/Documents/GitHub/swan-engine/include/imgui/imgui_tables.cpp

CMakeFiles/Gazelle.dir/include/imgui/imgui_tables.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Gazelle.dir/include/imgui/imgui_tables.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nizam/Documents/GitHub/swan-engine/include/imgui/imgui_tables.cpp > CMakeFiles/Gazelle.dir/include/imgui/imgui_tables.cpp.i

CMakeFiles/Gazelle.dir/include/imgui/imgui_tables.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Gazelle.dir/include/imgui/imgui_tables.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nizam/Documents/GitHub/swan-engine/include/imgui/imgui_tables.cpp -o CMakeFiles/Gazelle.dir/include/imgui/imgui_tables.cpp.s

CMakeFiles/Gazelle.dir/include/imgui/imgui_widgets.cpp.o: CMakeFiles/Gazelle.dir/flags.make
CMakeFiles/Gazelle.dir/include/imgui/imgui_widgets.cpp.o: include/imgui/imgui_widgets.cpp
CMakeFiles/Gazelle.dir/include/imgui/imgui_widgets.cpp.o: CMakeFiles/Gazelle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nizam/Documents/GitHub/swan-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/Gazelle.dir/include/imgui/imgui_widgets.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Gazelle.dir/include/imgui/imgui_widgets.cpp.o -MF CMakeFiles/Gazelle.dir/include/imgui/imgui_widgets.cpp.o.d -o CMakeFiles/Gazelle.dir/include/imgui/imgui_widgets.cpp.o -c /home/nizam/Documents/GitHub/swan-engine/include/imgui/imgui_widgets.cpp

CMakeFiles/Gazelle.dir/include/imgui/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Gazelle.dir/include/imgui/imgui_widgets.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nizam/Documents/GitHub/swan-engine/include/imgui/imgui_widgets.cpp > CMakeFiles/Gazelle.dir/include/imgui/imgui_widgets.cpp.i

CMakeFiles/Gazelle.dir/include/imgui/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Gazelle.dir/include/imgui/imgui_widgets.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nizam/Documents/GitHub/swan-engine/include/imgui/imgui_widgets.cpp -o CMakeFiles/Gazelle.dir/include/imgui/imgui_widgets.cpp.s

CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_glfw.cpp.o: CMakeFiles/Gazelle.dir/flags.make
CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_glfw.cpp.o: include/imgui/backends/imgui_impl_glfw.cpp
CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_glfw.cpp.o: CMakeFiles/Gazelle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nizam/Documents/GitHub/swan-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_glfw.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_glfw.cpp.o -MF CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_glfw.cpp.o.d -o CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_glfw.cpp.o -c /home/nizam/Documents/GitHub/swan-engine/include/imgui/backends/imgui_impl_glfw.cpp

CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_glfw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_glfw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nizam/Documents/GitHub/swan-engine/include/imgui/backends/imgui_impl_glfw.cpp > CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_glfw.cpp.i

CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_glfw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_glfw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nizam/Documents/GitHub/swan-engine/include/imgui/backends/imgui_impl_glfw.cpp -o CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_glfw.cpp.s

CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_opengl3.cpp.o: CMakeFiles/Gazelle.dir/flags.make
CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_opengl3.cpp.o: include/imgui/backends/imgui_impl_opengl3.cpp
CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_opengl3.cpp.o: CMakeFiles/Gazelle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nizam/Documents/GitHub/swan-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_opengl3.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_opengl3.cpp.o -MF CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_opengl3.cpp.o.d -o CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_opengl3.cpp.o -c /home/nizam/Documents/GitHub/swan-engine/include/imgui/backends/imgui_impl_opengl3.cpp

CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_opengl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_opengl3.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nizam/Documents/GitHub/swan-engine/include/imgui/backends/imgui_impl_opengl3.cpp > CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_opengl3.cpp.i

CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_opengl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_opengl3.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nizam/Documents/GitHub/swan-engine/include/imgui/backends/imgui_impl_opengl3.cpp -o CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_opengl3.cpp.s

# Object files for target Gazelle
Gazelle_OBJECTS = \
"CMakeFiles/Gazelle.dir/lib/glad.c.o" \
"CMakeFiles/Gazelle.dir/src/main.cpp.o" \
"CMakeFiles/Gazelle.dir/src/engine/ui/EngineUI.cpp.o" \
"CMakeFiles/Gazelle.dir/src/engine/FrameBuffer.cpp.o" \
"CMakeFiles/Gazelle.dir/include/imgui/imgui.cpp.o" \
"CMakeFiles/Gazelle.dir/include/imgui/imgui_demo.cpp.o" \
"CMakeFiles/Gazelle.dir/include/imgui/imgui_draw.cpp.o" \
"CMakeFiles/Gazelle.dir/include/imgui/imgui_tables.cpp.o" \
"CMakeFiles/Gazelle.dir/include/imgui/imgui_widgets.cpp.o" \
"CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_glfw.cpp.o" \
"CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_opengl3.cpp.o"

# External object files for target Gazelle
Gazelle_EXTERNAL_OBJECTS =

Gazelle: CMakeFiles/Gazelle.dir/lib/glad.c.o
Gazelle: CMakeFiles/Gazelle.dir/src/main.cpp.o
Gazelle: CMakeFiles/Gazelle.dir/src/engine/ui/EngineUI.cpp.o
Gazelle: CMakeFiles/Gazelle.dir/src/engine/FrameBuffer.cpp.o
Gazelle: CMakeFiles/Gazelle.dir/include/imgui/imgui.cpp.o
Gazelle: CMakeFiles/Gazelle.dir/include/imgui/imgui_demo.cpp.o
Gazelle: CMakeFiles/Gazelle.dir/include/imgui/imgui_draw.cpp.o
Gazelle: CMakeFiles/Gazelle.dir/include/imgui/imgui_tables.cpp.o
Gazelle: CMakeFiles/Gazelle.dir/include/imgui/imgui_widgets.cpp.o
Gazelle: CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_glfw.cpp.o
Gazelle: CMakeFiles/Gazelle.dir/include/imgui/backends/imgui_impl_opengl3.cpp.o
Gazelle: CMakeFiles/Gazelle.dir/build.make
Gazelle: CMakeFiles/Gazelle.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nizam/Documents/GitHub/swan-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking CXX executable Gazelle"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Gazelle.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Gazelle.dir/build: Gazelle
.PHONY : CMakeFiles/Gazelle.dir/build

CMakeFiles/Gazelle.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Gazelle.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Gazelle.dir/clean

CMakeFiles/Gazelle.dir/depend:
	cd /home/nizam/Documents/GitHub/swan-engine && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nizam/Documents/GitHub/swan-engine /home/nizam/Documents/GitHub/swan-engine /home/nizam/Documents/GitHub/swan-engine /home/nizam/Documents/GitHub/swan-engine /home/nizam/Documents/GitHub/swan-engine/CMakeFiles/Gazelle.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Gazelle.dir/depend
