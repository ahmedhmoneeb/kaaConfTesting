# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.3

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ahmedmoneeb/Downloads/kaa/TestingCluster/TestingConf

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ahmedmoneeb/Downloads/kaa/TestingCluster/TestingConf/build

# Include any dependencies generated for this target.
include CMakeFiles/demo_client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/demo_client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/demo_client.dir/flags.make

CMakeFiles/demo_client.dir/src/kaa_demo.c.o: CMakeFiles/demo_client.dir/flags.make
CMakeFiles/demo_client.dir/src/kaa_demo.c.o: ../src/kaa_demo.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ahmedmoneeb/Downloads/kaa/TestingCluster/TestingConf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/demo_client.dir/src/kaa_demo.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/demo_client.dir/src/kaa_demo.c.o   -c /home/ahmedmoneeb/Downloads/kaa/TestingCluster/TestingConf/src/kaa_demo.c

CMakeFiles/demo_client.dir/src/kaa_demo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/demo_client.dir/src/kaa_demo.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/ahmedmoneeb/Downloads/kaa/TestingCluster/TestingConf/src/kaa_demo.c > CMakeFiles/demo_client.dir/src/kaa_demo.c.i

CMakeFiles/demo_client.dir/src/kaa_demo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/demo_client.dir/src/kaa_demo.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/ahmedmoneeb/Downloads/kaa/TestingCluster/TestingConf/src/kaa_demo.c -o CMakeFiles/demo_client.dir/src/kaa_demo.c.s

CMakeFiles/demo_client.dir/src/kaa_demo.c.o.requires:

.PHONY : CMakeFiles/demo_client.dir/src/kaa_demo.c.o.requires

CMakeFiles/demo_client.dir/src/kaa_demo.c.o.provides: CMakeFiles/demo_client.dir/src/kaa_demo.c.o.requires
	$(MAKE) -f CMakeFiles/demo_client.dir/build.make CMakeFiles/demo_client.dir/src/kaa_demo.c.o.provides.build
.PHONY : CMakeFiles/demo_client.dir/src/kaa_demo.c.o.provides

CMakeFiles/demo_client.dir/src/kaa_demo.c.o.provides.build: CMakeFiles/demo_client.dir/src/kaa_demo.c.o


# Object files for target demo_client
demo_client_OBJECTS = \
"CMakeFiles/demo_client.dir/src/kaa_demo.c.o"

# External object files for target demo_client
demo_client_EXTERNAL_OBJECTS =

demo_client: CMakeFiles/demo_client.dir/src/kaa_demo.c.o
demo_client: CMakeFiles/demo_client.dir/build.make
demo_client: libs/kaa/libkaac_s.a
demo_client: /usr/lib/x86_64-linux-gnu/libssl.so
demo_client: /usr/lib/x86_64-linux-gnu/libcrypto.so
demo_client: CMakeFiles/demo_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ahmedmoneeb/Downloads/kaa/TestingCluster/TestingConf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable demo_client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/demo_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/demo_client.dir/build: demo_client

.PHONY : CMakeFiles/demo_client.dir/build

CMakeFiles/demo_client.dir/requires: CMakeFiles/demo_client.dir/src/kaa_demo.c.o.requires

.PHONY : CMakeFiles/demo_client.dir/requires

CMakeFiles/demo_client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/demo_client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/demo_client.dir/clean

CMakeFiles/demo_client.dir/depend:
	cd /home/ahmedmoneeb/Downloads/kaa/TestingCluster/TestingConf/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ahmedmoneeb/Downloads/kaa/TestingCluster/TestingConf /home/ahmedmoneeb/Downloads/kaa/TestingCluster/TestingConf /home/ahmedmoneeb/Downloads/kaa/TestingCluster/TestingConf/build /home/ahmedmoneeb/Downloads/kaa/TestingCluster/TestingConf/build /home/ahmedmoneeb/Downloads/kaa/TestingCluster/TestingConf/build/CMakeFiles/demo_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/demo_client.dir/depend

