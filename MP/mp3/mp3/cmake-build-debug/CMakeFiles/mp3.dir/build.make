# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Tobias/Desktop/CS463/MP/mp3/mp3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Tobias/Desktop/CS463/MP/mp3/mp3/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/mp3.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mp3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mp3.dir/flags.make

CMakeFiles/mp3.dir/trusted/Wolfssl_Enclave.c.o: CMakeFiles/mp3.dir/flags.make
CMakeFiles/mp3.dir/trusted/Wolfssl_Enclave.c.o: ../trusted/Wolfssl_Enclave.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Tobias/Desktop/CS463/MP/mp3/mp3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/mp3.dir/trusted/Wolfssl_Enclave.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mp3.dir/trusted/Wolfssl_Enclave.c.o   -c /Users/Tobias/Desktop/CS463/MP/mp3/mp3/trusted/Wolfssl_Enclave.c

CMakeFiles/mp3.dir/trusted/Wolfssl_Enclave.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mp3.dir/trusted/Wolfssl_Enclave.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Tobias/Desktop/CS463/MP/mp3/mp3/trusted/Wolfssl_Enclave.c > CMakeFiles/mp3.dir/trusted/Wolfssl_Enclave.c.i

CMakeFiles/mp3.dir/trusted/Wolfssl_Enclave.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mp3.dir/trusted/Wolfssl_Enclave.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Tobias/Desktop/CS463/MP/mp3/mp3/trusted/Wolfssl_Enclave.c -o CMakeFiles/mp3.dir/trusted/Wolfssl_Enclave.c.s

CMakeFiles/mp3.dir/untrusted/App.c.o: CMakeFiles/mp3.dir/flags.make
CMakeFiles/mp3.dir/untrusted/App.c.o: ../untrusted/App.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Tobias/Desktop/CS463/MP/mp3/mp3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/mp3.dir/untrusted/App.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mp3.dir/untrusted/App.c.o   -c /Users/Tobias/Desktop/CS463/MP/mp3/mp3/untrusted/App.c

CMakeFiles/mp3.dir/untrusted/App.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mp3.dir/untrusted/App.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Tobias/Desktop/CS463/MP/mp3/mp3/untrusted/App.c > CMakeFiles/mp3.dir/untrusted/App.c.i

CMakeFiles/mp3.dir/untrusted/App.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mp3.dir/untrusted/App.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Tobias/Desktop/CS463/MP/mp3/mp3/untrusted/App.c -o CMakeFiles/mp3.dir/untrusted/App.c.s

CMakeFiles/mp3.dir/untrusted/client-tls.c.o: CMakeFiles/mp3.dir/flags.make
CMakeFiles/mp3.dir/untrusted/client-tls.c.o: ../untrusted/client-tls.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Tobias/Desktop/CS463/MP/mp3/mp3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/mp3.dir/untrusted/client-tls.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mp3.dir/untrusted/client-tls.c.o   -c /Users/Tobias/Desktop/CS463/MP/mp3/mp3/untrusted/client-tls.c

CMakeFiles/mp3.dir/untrusted/client-tls.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mp3.dir/untrusted/client-tls.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Tobias/Desktop/CS463/MP/mp3/mp3/untrusted/client-tls.c > CMakeFiles/mp3.dir/untrusted/client-tls.c.i

CMakeFiles/mp3.dir/untrusted/client-tls.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mp3.dir/untrusted/client-tls.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Tobias/Desktop/CS463/MP/mp3/mp3/untrusted/client-tls.c -o CMakeFiles/mp3.dir/untrusted/client-tls.c.s

CMakeFiles/mp3.dir/untrusted/server-tls.c.o: CMakeFiles/mp3.dir/flags.make
CMakeFiles/mp3.dir/untrusted/server-tls.c.o: ../untrusted/server-tls.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Tobias/Desktop/CS463/MP/mp3/mp3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/mp3.dir/untrusted/server-tls.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mp3.dir/untrusted/server-tls.c.o   -c /Users/Tobias/Desktop/CS463/MP/mp3/mp3/untrusted/server-tls.c

CMakeFiles/mp3.dir/untrusted/server-tls.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mp3.dir/untrusted/server-tls.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Tobias/Desktop/CS463/MP/mp3/mp3/untrusted/server-tls.c > CMakeFiles/mp3.dir/untrusted/server-tls.c.i

CMakeFiles/mp3.dir/untrusted/server-tls.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mp3.dir/untrusted/server-tls.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Tobias/Desktop/CS463/MP/mp3/mp3/untrusted/server-tls.c -o CMakeFiles/mp3.dir/untrusted/server-tls.c.s

# Object files for target mp3
mp3_OBJECTS = \
"CMakeFiles/mp3.dir/trusted/Wolfssl_Enclave.c.o" \
"CMakeFiles/mp3.dir/untrusted/App.c.o" \
"CMakeFiles/mp3.dir/untrusted/client-tls.c.o" \
"CMakeFiles/mp3.dir/untrusted/server-tls.c.o"

# External object files for target mp3
mp3_EXTERNAL_OBJECTS =

mp3: CMakeFiles/mp3.dir/trusted/Wolfssl_Enclave.c.o
mp3: CMakeFiles/mp3.dir/untrusted/App.c.o
mp3: CMakeFiles/mp3.dir/untrusted/client-tls.c.o
mp3: CMakeFiles/mp3.dir/untrusted/server-tls.c.o
mp3: CMakeFiles/mp3.dir/build.make
mp3: CMakeFiles/mp3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Tobias/Desktop/CS463/MP/mp3/mp3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable mp3"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mp3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mp3.dir/build: mp3

.PHONY : CMakeFiles/mp3.dir/build

CMakeFiles/mp3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mp3.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mp3.dir/clean

CMakeFiles/mp3.dir/depend:
	cd /Users/Tobias/Desktop/CS463/MP/mp3/mp3/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Tobias/Desktop/CS463/MP/mp3/mp3 /Users/Tobias/Desktop/CS463/MP/mp3/mp3 /Users/Tobias/Desktop/CS463/MP/mp3/mp3/cmake-build-debug /Users/Tobias/Desktop/CS463/MP/mp3/mp3/cmake-build-debug /Users/Tobias/Desktop/CS463/MP/mp3/mp3/cmake-build-debug/CMakeFiles/mp3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mp3.dir/depend

