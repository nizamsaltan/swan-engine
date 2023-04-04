# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/nizam/Documents/GitHub/swan-engine/CMakeFiles /home/nizam/Documents/GitHub/swan-engine//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/nizam/Documents/GitHub/swan-engine/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named SwanEngine

# Build rule for target.
SwanEngine: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 SwanEngine
.PHONY : SwanEngine

# fast build rule for target.
SwanEngine/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/build
.PHONY : SwanEngine/fast

include/imgui/backends/imgui_impl_glfw.o: include/imgui/backends/imgui_impl_glfw.cpp.o
.PHONY : include/imgui/backends/imgui_impl_glfw.o

# target to build an object file
include/imgui/backends/imgui_impl_glfw.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/include/imgui/backends/imgui_impl_glfw.cpp.o
.PHONY : include/imgui/backends/imgui_impl_glfw.cpp.o

include/imgui/backends/imgui_impl_glfw.i: include/imgui/backends/imgui_impl_glfw.cpp.i
.PHONY : include/imgui/backends/imgui_impl_glfw.i

# target to preprocess a source file
include/imgui/backends/imgui_impl_glfw.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/include/imgui/backends/imgui_impl_glfw.cpp.i
.PHONY : include/imgui/backends/imgui_impl_glfw.cpp.i

include/imgui/backends/imgui_impl_glfw.s: include/imgui/backends/imgui_impl_glfw.cpp.s
.PHONY : include/imgui/backends/imgui_impl_glfw.s

# target to generate assembly for a file
include/imgui/backends/imgui_impl_glfw.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/include/imgui/backends/imgui_impl_glfw.cpp.s
.PHONY : include/imgui/backends/imgui_impl_glfw.cpp.s

include/imgui/backends/imgui_impl_opengl3.o: include/imgui/backends/imgui_impl_opengl3.cpp.o
.PHONY : include/imgui/backends/imgui_impl_opengl3.o

# target to build an object file
include/imgui/backends/imgui_impl_opengl3.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/include/imgui/backends/imgui_impl_opengl3.cpp.o
.PHONY : include/imgui/backends/imgui_impl_opengl3.cpp.o

include/imgui/backends/imgui_impl_opengl3.i: include/imgui/backends/imgui_impl_opengl3.cpp.i
.PHONY : include/imgui/backends/imgui_impl_opengl3.i

# target to preprocess a source file
include/imgui/backends/imgui_impl_opengl3.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/include/imgui/backends/imgui_impl_opengl3.cpp.i
.PHONY : include/imgui/backends/imgui_impl_opengl3.cpp.i

include/imgui/backends/imgui_impl_opengl3.s: include/imgui/backends/imgui_impl_opengl3.cpp.s
.PHONY : include/imgui/backends/imgui_impl_opengl3.s

# target to generate assembly for a file
include/imgui/backends/imgui_impl_opengl3.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/include/imgui/backends/imgui_impl_opengl3.cpp.s
.PHONY : include/imgui/backends/imgui_impl_opengl3.cpp.s

include/imgui/imgui.o: include/imgui/imgui.cpp.o
.PHONY : include/imgui/imgui.o

# target to build an object file
include/imgui/imgui.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/include/imgui/imgui.cpp.o
.PHONY : include/imgui/imgui.cpp.o

include/imgui/imgui.i: include/imgui/imgui.cpp.i
.PHONY : include/imgui/imgui.i

# target to preprocess a source file
include/imgui/imgui.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/include/imgui/imgui.cpp.i
.PHONY : include/imgui/imgui.cpp.i

include/imgui/imgui.s: include/imgui/imgui.cpp.s
.PHONY : include/imgui/imgui.s

# target to generate assembly for a file
include/imgui/imgui.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/include/imgui/imgui.cpp.s
.PHONY : include/imgui/imgui.cpp.s

include/imgui/imgui_demo.o: include/imgui/imgui_demo.cpp.o
.PHONY : include/imgui/imgui_demo.o

# target to build an object file
include/imgui/imgui_demo.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/include/imgui/imgui_demo.cpp.o
.PHONY : include/imgui/imgui_demo.cpp.o

include/imgui/imgui_demo.i: include/imgui/imgui_demo.cpp.i
.PHONY : include/imgui/imgui_demo.i

# target to preprocess a source file
include/imgui/imgui_demo.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/include/imgui/imgui_demo.cpp.i
.PHONY : include/imgui/imgui_demo.cpp.i

include/imgui/imgui_demo.s: include/imgui/imgui_demo.cpp.s
.PHONY : include/imgui/imgui_demo.s

# target to generate assembly for a file
include/imgui/imgui_demo.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/include/imgui/imgui_demo.cpp.s
.PHONY : include/imgui/imgui_demo.cpp.s

include/imgui/imgui_draw.o: include/imgui/imgui_draw.cpp.o
.PHONY : include/imgui/imgui_draw.o

# target to build an object file
include/imgui/imgui_draw.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/include/imgui/imgui_draw.cpp.o
.PHONY : include/imgui/imgui_draw.cpp.o

include/imgui/imgui_draw.i: include/imgui/imgui_draw.cpp.i
.PHONY : include/imgui/imgui_draw.i

# target to preprocess a source file
include/imgui/imgui_draw.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/include/imgui/imgui_draw.cpp.i
.PHONY : include/imgui/imgui_draw.cpp.i

include/imgui/imgui_draw.s: include/imgui/imgui_draw.cpp.s
.PHONY : include/imgui/imgui_draw.s

# target to generate assembly for a file
include/imgui/imgui_draw.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/include/imgui/imgui_draw.cpp.s
.PHONY : include/imgui/imgui_draw.cpp.s

include/imgui/imgui_tables.o: include/imgui/imgui_tables.cpp.o
.PHONY : include/imgui/imgui_tables.o

# target to build an object file
include/imgui/imgui_tables.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/include/imgui/imgui_tables.cpp.o
.PHONY : include/imgui/imgui_tables.cpp.o

include/imgui/imgui_tables.i: include/imgui/imgui_tables.cpp.i
.PHONY : include/imgui/imgui_tables.i

# target to preprocess a source file
include/imgui/imgui_tables.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/include/imgui/imgui_tables.cpp.i
.PHONY : include/imgui/imgui_tables.cpp.i

include/imgui/imgui_tables.s: include/imgui/imgui_tables.cpp.s
.PHONY : include/imgui/imgui_tables.s

# target to generate assembly for a file
include/imgui/imgui_tables.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/include/imgui/imgui_tables.cpp.s
.PHONY : include/imgui/imgui_tables.cpp.s

include/imgui/imgui_widgets.o: include/imgui/imgui_widgets.cpp.o
.PHONY : include/imgui/imgui_widgets.o

# target to build an object file
include/imgui/imgui_widgets.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/include/imgui/imgui_widgets.cpp.o
.PHONY : include/imgui/imgui_widgets.cpp.o

include/imgui/imgui_widgets.i: include/imgui/imgui_widgets.cpp.i
.PHONY : include/imgui/imgui_widgets.i

# target to preprocess a source file
include/imgui/imgui_widgets.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/include/imgui/imgui_widgets.cpp.i
.PHONY : include/imgui/imgui_widgets.cpp.i

include/imgui/imgui_widgets.s: include/imgui/imgui_widgets.cpp.s
.PHONY : include/imgui/imgui_widgets.s

# target to generate assembly for a file
include/imgui/imgui_widgets.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/include/imgui/imgui_widgets.cpp.s
.PHONY : include/imgui/imgui_widgets.cpp.s

lib/glad.o: lib/glad.c.o
.PHONY : lib/glad.o

# target to build an object file
lib/glad.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/lib/glad.c.o
.PHONY : lib/glad.c.o

lib/glad.i: lib/glad.c.i
.PHONY : lib/glad.i

# target to preprocess a source file
lib/glad.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/lib/glad.c.i
.PHONY : lib/glad.c.i

lib/glad.s: lib/glad.c.s
.PHONY : lib/glad.s

# target to generate assembly for a file
lib/glad.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/lib/glad.c.s
.PHONY : lib/glad.c.s

src/engine/FrameBuffer.o: src/engine/FrameBuffer.cpp.o
.PHONY : src/engine/FrameBuffer.o

# target to build an object file
src/engine/FrameBuffer.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/src/engine/FrameBuffer.cpp.o
.PHONY : src/engine/FrameBuffer.cpp.o

src/engine/FrameBuffer.i: src/engine/FrameBuffer.cpp.i
.PHONY : src/engine/FrameBuffer.i

# target to preprocess a source file
src/engine/FrameBuffer.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/src/engine/FrameBuffer.cpp.i
.PHONY : src/engine/FrameBuffer.cpp.i

src/engine/FrameBuffer.s: src/engine/FrameBuffer.cpp.s
.PHONY : src/engine/FrameBuffer.s

# target to generate assembly for a file
src/engine/FrameBuffer.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/src/engine/FrameBuffer.cpp.s
.PHONY : src/engine/FrameBuffer.cpp.s

src/engine/ui/EngineUI.o: src/engine/ui/EngineUI.cpp.o
.PHONY : src/engine/ui/EngineUI.o

# target to build an object file
src/engine/ui/EngineUI.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/src/engine/ui/EngineUI.cpp.o
.PHONY : src/engine/ui/EngineUI.cpp.o

src/engine/ui/EngineUI.i: src/engine/ui/EngineUI.cpp.i
.PHONY : src/engine/ui/EngineUI.i

# target to preprocess a source file
src/engine/ui/EngineUI.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/src/engine/ui/EngineUI.cpp.i
.PHONY : src/engine/ui/EngineUI.cpp.i

src/engine/ui/EngineUI.s: src/engine/ui/EngineUI.cpp.s
.PHONY : src/engine/ui/EngineUI.s

# target to generate assembly for a file
src/engine/ui/EngineUI.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/src/engine/ui/EngineUI.cpp.s
.PHONY : src/engine/ui/EngineUI.cpp.s

src/main.o: src/main.cpp.o
.PHONY : src/main.o

# target to build an object file
src/main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/src/main.cpp.o
.PHONY : src/main.cpp.o

src/main.i: src/main.cpp.i
.PHONY : src/main.i

# target to preprocess a source file
src/main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/src/main.cpp.i
.PHONY : src/main.cpp.i

src/main.s: src/main.cpp.s
.PHONY : src/main.s

# target to generate assembly for a file
src/main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/SwanEngine.dir/build.make CMakeFiles/SwanEngine.dir/src/main.cpp.s
.PHONY : src/main.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... SwanEngine"
	@echo "... include/imgui/backends/imgui_impl_glfw.o"
	@echo "... include/imgui/backends/imgui_impl_glfw.i"
	@echo "... include/imgui/backends/imgui_impl_glfw.s"
	@echo "... include/imgui/backends/imgui_impl_opengl3.o"
	@echo "... include/imgui/backends/imgui_impl_opengl3.i"
	@echo "... include/imgui/backends/imgui_impl_opengl3.s"
	@echo "... include/imgui/imgui.o"
	@echo "... include/imgui/imgui.i"
	@echo "... include/imgui/imgui.s"
	@echo "... include/imgui/imgui_demo.o"
	@echo "... include/imgui/imgui_demo.i"
	@echo "... include/imgui/imgui_demo.s"
	@echo "... include/imgui/imgui_draw.o"
	@echo "... include/imgui/imgui_draw.i"
	@echo "... include/imgui/imgui_draw.s"
	@echo "... include/imgui/imgui_tables.o"
	@echo "... include/imgui/imgui_tables.i"
	@echo "... include/imgui/imgui_tables.s"
	@echo "... include/imgui/imgui_widgets.o"
	@echo "... include/imgui/imgui_widgets.i"
	@echo "... include/imgui/imgui_widgets.s"
	@echo "... lib/glad.o"
	@echo "... lib/glad.i"
	@echo "... lib/glad.s"
	@echo "... src/engine/FrameBuffer.o"
	@echo "... src/engine/FrameBuffer.i"
	@echo "... src/engine/FrameBuffer.s"
	@echo "... src/engine/ui/EngineUI.o"
	@echo "... src/engine/ui/EngineUI.i"
	@echo "... src/engine/ui/EngineUI.s"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

