# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/mnt/c/Users/Oguzhan Karaarslan/Desktop/repos/pogema-lacam-dcc/algorithms/lacam"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/mnt/c/Users/Oguzhan Karaarslan/Desktop/repos/pogema-lacam-dcc/algorithms/lacam"

# Include any dependencies generated for this target.
include CMakeFiles/lacam.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lacam.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lacam.dir/flags.make

CMakeFiles/lacam.dir/main.cpp.o: CMakeFiles/lacam.dir/flags.make
CMakeFiles/lacam.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Users/Oguzhan Karaarslan/Desktop/repos/pogema-lacam-dcc/algorithms/lacam/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lacam.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lacam.dir/main.cpp.o -c "/mnt/c/Users/Oguzhan Karaarslan/Desktop/repos/pogema-lacam-dcc/algorithms/lacam/main.cpp"

CMakeFiles/lacam.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lacam.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/mnt/c/Users/Oguzhan Karaarslan/Desktop/repos/pogema-lacam-dcc/algorithms/lacam/main.cpp" > CMakeFiles/lacam.dir/main.cpp.i

CMakeFiles/lacam.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lacam.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/mnt/c/Users/Oguzhan Karaarslan/Desktop/repos/pogema-lacam-dcc/algorithms/lacam/main.cpp" -o CMakeFiles/lacam.dir/main.cpp.s

# Object files for target lacam
lacam_OBJECTS = \
"CMakeFiles/lacam.dir/main.cpp.o"

# External object files for target lacam
lacam_EXTERNAL_OBJECTS =

liblacam.so: CMakeFiles/lacam.dir/main.cpp.o
liblacam.so: CMakeFiles/lacam.dir/build.make
liblacam.so: lacam3/liblacam3.a
liblacam.so: CMakeFiles/lacam.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/mnt/c/Users/Oguzhan Karaarslan/Desktop/repos/pogema-lacam-dcc/algorithms/lacam/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library liblacam.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lacam.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lacam.dir/build: liblacam.so

.PHONY : CMakeFiles/lacam.dir/build

CMakeFiles/lacam.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lacam.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lacam.dir/clean

CMakeFiles/lacam.dir/depend:
	cd "/mnt/c/Users/Oguzhan Karaarslan/Desktop/repos/pogema-lacam-dcc/algorithms/lacam" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/mnt/c/Users/Oguzhan Karaarslan/Desktop/repos/pogema-lacam-dcc/algorithms/lacam" "/mnt/c/Users/Oguzhan Karaarslan/Desktop/repos/pogema-lacam-dcc/algorithms/lacam" "/mnt/c/Users/Oguzhan Karaarslan/Desktop/repos/pogema-lacam-dcc/algorithms/lacam" "/mnt/c/Users/Oguzhan Karaarslan/Desktop/repos/pogema-lacam-dcc/algorithms/lacam" "/mnt/c/Users/Oguzhan Karaarslan/Desktop/repos/pogema-lacam-dcc/algorithms/lacam/CMakeFiles/lacam.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/lacam.dir/depend

