# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\CLion 2020.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\CLion 2020.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\37419\CLionProjects\TinyWebServer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\37419\CLionProjects\TinyWebServer\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/TinyWebServer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TinyWebServer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TinyWebServer.dir/flags.make

CMakeFiles/TinyWebServer.dir/main.cpp.obj: CMakeFiles/TinyWebServer.dir/flags.make
CMakeFiles/TinyWebServer.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\37419\CLionProjects\TinyWebServer\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TinyWebServer.dir/main.cpp.obj"
	D:\Dev-Cpp\MinGW64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\TinyWebServer.dir\main.cpp.obj -c C:\Users\37419\CLionProjects\TinyWebServer\main.cpp

CMakeFiles/TinyWebServer.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TinyWebServer.dir/main.cpp.i"
	D:\Dev-Cpp\MinGW64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\37419\CLionProjects\TinyWebServer\main.cpp > CMakeFiles\TinyWebServer.dir\main.cpp.i

CMakeFiles/TinyWebServer.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TinyWebServer.dir/main.cpp.s"
	D:\Dev-Cpp\MinGW64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\37419\CLionProjects\TinyWebServer\main.cpp -o CMakeFiles\TinyWebServer.dir\main.cpp.s

CMakeFiles/TinyWebServer.dir/lock/locker.cpp.obj: CMakeFiles/TinyWebServer.dir/flags.make
CMakeFiles/TinyWebServer.dir/lock/locker.cpp.obj: ../lock/locker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\37419\CLionProjects\TinyWebServer\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/TinyWebServer.dir/lock/locker.cpp.obj"
	D:\Dev-Cpp\MinGW64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\TinyWebServer.dir\lock\locker.cpp.obj -c C:\Users\37419\CLionProjects\TinyWebServer\lock\locker.cpp

CMakeFiles/TinyWebServer.dir/lock/locker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TinyWebServer.dir/lock/locker.cpp.i"
	D:\Dev-Cpp\MinGW64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\37419\CLionProjects\TinyWebServer\lock\locker.cpp > CMakeFiles\TinyWebServer.dir\lock\locker.cpp.i

CMakeFiles/TinyWebServer.dir/lock/locker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TinyWebServer.dir/lock/locker.cpp.s"
	D:\Dev-Cpp\MinGW64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\37419\CLionProjects\TinyWebServer\lock\locker.cpp -o CMakeFiles\TinyWebServer.dir\lock\locker.cpp.s

# Object files for target TinyWebServer
TinyWebServer_OBJECTS = \
"CMakeFiles/TinyWebServer.dir/main.cpp.obj" \
"CMakeFiles/TinyWebServer.dir/lock/locker.cpp.obj"

# External object files for target TinyWebServer
TinyWebServer_EXTERNAL_OBJECTS =

TinyWebServer.exe: CMakeFiles/TinyWebServer.dir/main.cpp.obj
TinyWebServer.exe: CMakeFiles/TinyWebServer.dir/lock/locker.cpp.obj
TinyWebServer.exe: CMakeFiles/TinyWebServer.dir/build.make
TinyWebServer.exe: CMakeFiles/TinyWebServer.dir/linklibs.rsp
TinyWebServer.exe: CMakeFiles/TinyWebServer.dir/objects1.rsp
TinyWebServer.exe: CMakeFiles/TinyWebServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\37419\CLionProjects\TinyWebServer\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable TinyWebServer.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\TinyWebServer.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TinyWebServer.dir/build: TinyWebServer.exe

.PHONY : CMakeFiles/TinyWebServer.dir/build

CMakeFiles/TinyWebServer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\TinyWebServer.dir\cmake_clean.cmake
.PHONY : CMakeFiles/TinyWebServer.dir/clean

CMakeFiles/TinyWebServer.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\37419\CLionProjects\TinyWebServer C:\Users\37419\CLionProjects\TinyWebServer C:\Users\37419\CLionProjects\TinyWebServer\cmake-build-debug C:\Users\37419\CLionProjects\TinyWebServer\cmake-build-debug C:\Users\37419\CLionProjects\TinyWebServer\cmake-build-debug\CMakeFiles\TinyWebServer.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TinyWebServer.dir/depend

