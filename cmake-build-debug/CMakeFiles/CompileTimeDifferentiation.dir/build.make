# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/clion-2019.3.1/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion-2019.3.1/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/andrey/CompileTimeDifferentiation

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/andrey/CompileTimeDifferentiation/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/CompileTimeDifferentiation.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CompileTimeDifferentiation.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CompileTimeDifferentiation.dir/flags.make

CMakeFiles/CompileTimeDifferentiation.dir/main.cpp.o: CMakeFiles/CompileTimeDifferentiation.dir/flags.make
CMakeFiles/CompileTimeDifferentiation.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andrey/CompileTimeDifferentiation/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CompileTimeDifferentiation.dir/main.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CompileTimeDifferentiation.dir/main.cpp.o -c /home/andrey/CompileTimeDifferentiation/main.cpp

CMakeFiles/CompileTimeDifferentiation.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CompileTimeDifferentiation.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andrey/CompileTimeDifferentiation/main.cpp > CMakeFiles/CompileTimeDifferentiation.dir/main.cpp.i

CMakeFiles/CompileTimeDifferentiation.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CompileTimeDifferentiation.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andrey/CompileTimeDifferentiation/main.cpp -o CMakeFiles/CompileTimeDifferentiation.dir/main.cpp.s

CMakeFiles/CompileTimeDifferentiation.dir/common.cpp.o: CMakeFiles/CompileTimeDifferentiation.dir/flags.make
CMakeFiles/CompileTimeDifferentiation.dir/common.cpp.o: ../common.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andrey/CompileTimeDifferentiation/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/CompileTimeDifferentiation.dir/common.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CompileTimeDifferentiation.dir/common.cpp.o -c /home/andrey/CompileTimeDifferentiation/common.cpp

CMakeFiles/CompileTimeDifferentiation.dir/common.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CompileTimeDifferentiation.dir/common.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andrey/CompileTimeDifferentiation/common.cpp > CMakeFiles/CompileTimeDifferentiation.dir/common.cpp.i

CMakeFiles/CompileTimeDifferentiation.dir/common.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CompileTimeDifferentiation.dir/common.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andrey/CompileTimeDifferentiation/common.cpp -o CMakeFiles/CompileTimeDifferentiation.dir/common.cpp.s

CMakeFiles/CompileTimeDifferentiation.dir/differentiation.cpp.o: CMakeFiles/CompileTimeDifferentiation.dir/flags.make
CMakeFiles/CompileTimeDifferentiation.dir/differentiation.cpp.o: ../differentiation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andrey/CompileTimeDifferentiation/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/CompileTimeDifferentiation.dir/differentiation.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CompileTimeDifferentiation.dir/differentiation.cpp.o -c /home/andrey/CompileTimeDifferentiation/differentiation.cpp

CMakeFiles/CompileTimeDifferentiation.dir/differentiation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CompileTimeDifferentiation.dir/differentiation.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andrey/CompileTimeDifferentiation/differentiation.cpp > CMakeFiles/CompileTimeDifferentiation.dir/differentiation.cpp.i

CMakeFiles/CompileTimeDifferentiation.dir/differentiation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CompileTimeDifferentiation.dir/differentiation.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andrey/CompileTimeDifferentiation/differentiation.cpp -o CMakeFiles/CompileTimeDifferentiation.dir/differentiation.cpp.s

CMakeFiles/CompileTimeDifferentiation.dir/binary_operations.cpp.o: CMakeFiles/CompileTimeDifferentiation.dir/flags.make
CMakeFiles/CompileTimeDifferentiation.dir/binary_operations.cpp.o: ../binary_operations.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andrey/CompileTimeDifferentiation/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/CompileTimeDifferentiation.dir/binary_operations.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CompileTimeDifferentiation.dir/binary_operations.cpp.o -c /home/andrey/CompileTimeDifferentiation/binary_operations.cpp

CMakeFiles/CompileTimeDifferentiation.dir/binary_operations.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CompileTimeDifferentiation.dir/binary_operations.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andrey/CompileTimeDifferentiation/binary_operations.cpp > CMakeFiles/CompileTimeDifferentiation.dir/binary_operations.cpp.i

CMakeFiles/CompileTimeDifferentiation.dir/binary_operations.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CompileTimeDifferentiation.dir/binary_operations.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andrey/CompileTimeDifferentiation/binary_operations.cpp -o CMakeFiles/CompileTimeDifferentiation.dir/binary_operations.cpp.s

CMakeFiles/CompileTimeDifferentiation.dir/cp_float.cpp.o: CMakeFiles/CompileTimeDifferentiation.dir/flags.make
CMakeFiles/CompileTimeDifferentiation.dir/cp_float.cpp.o: ../cp_float.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andrey/CompileTimeDifferentiation/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/CompileTimeDifferentiation.dir/cp_float.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CompileTimeDifferentiation.dir/cp_float.cpp.o -c /home/andrey/CompileTimeDifferentiation/cp_float.cpp

CMakeFiles/CompileTimeDifferentiation.dir/cp_float.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CompileTimeDifferentiation.dir/cp_float.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andrey/CompileTimeDifferentiation/cp_float.cpp > CMakeFiles/CompileTimeDifferentiation.dir/cp_float.cpp.i

CMakeFiles/CompileTimeDifferentiation.dir/cp_float.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CompileTimeDifferentiation.dir/cp_float.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andrey/CompileTimeDifferentiation/cp_float.cpp -o CMakeFiles/CompileTimeDifferentiation.dir/cp_float.cpp.s

CMakeFiles/CompileTimeDifferentiation.dir/utils.cpp.o: CMakeFiles/CompileTimeDifferentiation.dir/flags.make
CMakeFiles/CompileTimeDifferentiation.dir/utils.cpp.o: ../utils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andrey/CompileTimeDifferentiation/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/CompileTimeDifferentiation.dir/utils.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CompileTimeDifferentiation.dir/utils.cpp.o -c /home/andrey/CompileTimeDifferentiation/utils.cpp

CMakeFiles/CompileTimeDifferentiation.dir/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CompileTimeDifferentiation.dir/utils.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andrey/CompileTimeDifferentiation/utils.cpp > CMakeFiles/CompileTimeDifferentiation.dir/utils.cpp.i

CMakeFiles/CompileTimeDifferentiation.dir/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CompileTimeDifferentiation.dir/utils.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andrey/CompileTimeDifferentiation/utils.cpp -o CMakeFiles/CompileTimeDifferentiation.dir/utils.cpp.s

# Object files for target CompileTimeDifferentiation
CompileTimeDifferentiation_OBJECTS = \
"CMakeFiles/CompileTimeDifferentiation.dir/main.cpp.o" \
"CMakeFiles/CompileTimeDifferentiation.dir/common.cpp.o" \
"CMakeFiles/CompileTimeDifferentiation.dir/differentiation.cpp.o" \
"CMakeFiles/CompileTimeDifferentiation.dir/binary_operations.cpp.o" \
"CMakeFiles/CompileTimeDifferentiation.dir/cp_float.cpp.o" \
"CMakeFiles/CompileTimeDifferentiation.dir/utils.cpp.o"

# External object files for target CompileTimeDifferentiation
CompileTimeDifferentiation_EXTERNAL_OBJECTS =

CompileTimeDifferentiation: CMakeFiles/CompileTimeDifferentiation.dir/main.cpp.o
CompileTimeDifferentiation: CMakeFiles/CompileTimeDifferentiation.dir/common.cpp.o
CompileTimeDifferentiation: CMakeFiles/CompileTimeDifferentiation.dir/differentiation.cpp.o
CompileTimeDifferentiation: CMakeFiles/CompileTimeDifferentiation.dir/binary_operations.cpp.o
CompileTimeDifferentiation: CMakeFiles/CompileTimeDifferentiation.dir/cp_float.cpp.o
CompileTimeDifferentiation: CMakeFiles/CompileTimeDifferentiation.dir/utils.cpp.o
CompileTimeDifferentiation: CMakeFiles/CompileTimeDifferentiation.dir/build.make
CompileTimeDifferentiation: CMakeFiles/CompileTimeDifferentiation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/andrey/CompileTimeDifferentiation/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable CompileTimeDifferentiation"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CompileTimeDifferentiation.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CompileTimeDifferentiation.dir/build: CompileTimeDifferentiation

.PHONY : CMakeFiles/CompileTimeDifferentiation.dir/build

CMakeFiles/CompileTimeDifferentiation.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CompileTimeDifferentiation.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CompileTimeDifferentiation.dir/clean

CMakeFiles/CompileTimeDifferentiation.dir/depend:
	cd /home/andrey/CompileTimeDifferentiation/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/andrey/CompileTimeDifferentiation /home/andrey/CompileTimeDifferentiation /home/andrey/CompileTimeDifferentiation/cmake-build-debug /home/andrey/CompileTimeDifferentiation/cmake-build-debug /home/andrey/CompileTimeDifferentiation/cmake-build-debug/CMakeFiles/CompileTimeDifferentiation.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CompileTimeDifferentiation.dir/depend

