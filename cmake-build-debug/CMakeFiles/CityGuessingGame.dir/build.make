# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/arminhamrah/Downloads/ATCS/CityGuessingGame2022

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/arminhamrah/Downloads/ATCS/CityGuessingGame2022/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/CityGuessingGame.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/CityGuessingGame.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/CityGuessingGame.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CityGuessingGame.dir/flags.make

CMakeFiles/CityGuessingGame.dir/main.cpp.o: CMakeFiles/CityGuessingGame.dir/flags.make
CMakeFiles/CityGuessingGame.dir/main.cpp.o: ../main.cpp
CMakeFiles/CityGuessingGame.dir/main.cpp.o: CMakeFiles/CityGuessingGame.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/arminhamrah/Downloads/ATCS/CityGuessingGame2022/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CityGuessingGame.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CityGuessingGame.dir/main.cpp.o -MF CMakeFiles/CityGuessingGame.dir/main.cpp.o.d -o CMakeFiles/CityGuessingGame.dir/main.cpp.o -c /Users/arminhamrah/Downloads/ATCS/CityGuessingGame2022/main.cpp

CMakeFiles/CityGuessingGame.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CityGuessingGame.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/arminhamrah/Downloads/ATCS/CityGuessingGame2022/main.cpp > CMakeFiles/CityGuessingGame.dir/main.cpp.i

CMakeFiles/CityGuessingGame.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CityGuessingGame.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/arminhamrah/Downloads/ATCS/CityGuessingGame2022/main.cpp -o CMakeFiles/CityGuessingGame.dir/main.cpp.s

# Object files for target CityGuessingGame
CityGuessingGame_OBJECTS = \
"CMakeFiles/CityGuessingGame.dir/main.cpp.o"

# External object files for target CityGuessingGame
CityGuessingGame_EXTERNAL_OBJECTS =

../CityGuessingGame: CMakeFiles/CityGuessingGame.dir/main.cpp.o
../CityGuessingGame: CMakeFiles/CityGuessingGame.dir/build.make
../CityGuessingGame: CMakeFiles/CityGuessingGame.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/arminhamrah/Downloads/ATCS/CityGuessingGame2022/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../CityGuessingGame"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CityGuessingGame.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CityGuessingGame.dir/build: ../CityGuessingGame
.PHONY : CMakeFiles/CityGuessingGame.dir/build

CMakeFiles/CityGuessingGame.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CityGuessingGame.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CityGuessingGame.dir/clean

CMakeFiles/CityGuessingGame.dir/depend:
	cd /Users/arminhamrah/Downloads/ATCS/CityGuessingGame2022/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/arminhamrah/Downloads/ATCS/CityGuessingGame2022 /Users/arminhamrah/Downloads/ATCS/CityGuessingGame2022 /Users/arminhamrah/Downloads/ATCS/CityGuessingGame2022/cmake-build-debug /Users/arminhamrah/Downloads/ATCS/CityGuessingGame2022/cmake-build-debug /Users/arminhamrah/Downloads/ATCS/CityGuessingGame2022/cmake-build-debug/CMakeFiles/CityGuessingGame.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CityGuessingGame.dir/depend

