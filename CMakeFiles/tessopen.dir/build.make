# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_SOURCE_DIR = /home/pi/tessopen

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/tessopen

# Include any dependencies generated for this target.
include CMakeFiles/tessopen.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tessopen.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tessopen.dir/flags.make

CMakeFiles/tessopen.dir/tessopen.cpp.o: CMakeFiles/tessopen.dir/flags.make
CMakeFiles/tessopen.dir/tessopen.cpp.o: tessopen.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/tessopen/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/tessopen.dir/tessopen.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tessopen.dir/tessopen.cpp.o -c /home/pi/tessopen/tessopen.cpp

CMakeFiles/tessopen.dir/tessopen.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tessopen.dir/tessopen.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pi/tessopen/tessopen.cpp > CMakeFiles/tessopen.dir/tessopen.cpp.i

CMakeFiles/tessopen.dir/tessopen.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tessopen.dir/tessopen.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pi/tessopen/tessopen.cpp -o CMakeFiles/tessopen.dir/tessopen.cpp.s

CMakeFiles/tessopen.dir/tessopen.cpp.o.requires:
.PHONY : CMakeFiles/tessopen.dir/tessopen.cpp.o.requires

CMakeFiles/tessopen.dir/tessopen.cpp.o.provides: CMakeFiles/tessopen.dir/tessopen.cpp.o.requires
	$(MAKE) -f CMakeFiles/tessopen.dir/build.make CMakeFiles/tessopen.dir/tessopen.cpp.o.provides.build
.PHONY : CMakeFiles/tessopen.dir/tessopen.cpp.o.provides

CMakeFiles/tessopen.dir/tessopen.cpp.o.provides.build: CMakeFiles/tessopen.dir/tessopen.cpp.o

# Object files for target tessopen
tessopen_OBJECTS = \
"CMakeFiles/tessopen.dir/tessopen.cpp.o"

# External object files for target tessopen
tessopen_EXTERNAL_OBJECTS =

tessopen: CMakeFiles/tessopen.dir/tessopen.cpp.o
tessopen: CMakeFiles/tessopen.dir/build.make
tessopen: /usr/local/lib/libopencv_videostab.so.2.4.13
tessopen: /usr/local/lib/libopencv_video.so.2.4.13
tessopen: /usr/local/lib/libopencv_ts.a
tessopen: /usr/local/lib/libopencv_superres.so.2.4.13
tessopen: /usr/local/lib/libopencv_stitching.so.2.4.13
tessopen: /usr/local/lib/libopencv_photo.so.2.4.13
tessopen: /usr/local/lib/libopencv_ocl.so.2.4.13
tessopen: /usr/local/lib/libopencv_objdetect.so.2.4.13
tessopen: /usr/local/lib/libopencv_nonfree.so.2.4.13
tessopen: /usr/local/lib/libopencv_ml.so.2.4.13
tessopen: /usr/local/lib/libopencv_legacy.so.2.4.13
tessopen: /usr/local/lib/libopencv_imgproc.so.2.4.13
tessopen: /usr/local/lib/libopencv_highgui.so.2.4.13
tessopen: /usr/local/lib/libopencv_gpu.so.2.4.13
tessopen: /usr/local/lib/libopencv_flann.so.2.4.13
tessopen: /usr/local/lib/libopencv_features2d.so.2.4.13
tessopen: /usr/local/lib/libopencv_core.so.2.4.13
tessopen: /usr/local/lib/libopencv_contrib.so.2.4.13
tessopen: /usr/local/lib/libopencv_calib3d.so.2.4.13
tessopen: /opt/vc/lib/libmmal_core.so
tessopen: /opt/vc/lib/libmmal_util.so
tessopen: /opt/vc/lib/libmmal.so
tessopen: /usr/local/lib/libopencv_videostab.so.2.4.13
tessopen: /usr/local/lib/libopencv_video.so.2.4.13
tessopen: /usr/local/lib/libopencv_ts.a
tessopen: /usr/local/lib/libopencv_superres.so.2.4.13
tessopen: /usr/local/lib/libopencv_stitching.so.2.4.13
tessopen: /usr/local/lib/libopencv_photo.so.2.4.13
tessopen: /usr/local/lib/libopencv_ocl.so.2.4.13
tessopen: /usr/local/lib/libopencv_objdetect.so.2.4.13
tessopen: /usr/local/lib/libopencv_nonfree.so.2.4.13
tessopen: /usr/local/lib/libopencv_ml.so.2.4.13
tessopen: /usr/local/lib/libopencv_legacy.so.2.4.13
tessopen: /usr/local/lib/libopencv_imgproc.so.2.4.13
tessopen: /usr/local/lib/libopencv_highgui.so.2.4.13
tessopen: /usr/local/lib/libopencv_gpu.so.2.4.13
tessopen: /usr/local/lib/libopencv_flann.so.2.4.13
tessopen: /usr/local/lib/libopencv_features2d.so.2.4.13
tessopen: /usr/local/lib/libopencv_core.so.2.4.13
tessopen: /usr/local/lib/libopencv_contrib.so.2.4.13
tessopen: /usr/local/lib/libopencv_calib3d.so.2.4.13
tessopen: /usr/local/lib/libopencv_nonfree.so.2.4.13
tessopen: /usr/local/lib/libopencv_ocl.so.2.4.13
tessopen: /usr/local/lib/libopencv_gpu.so.2.4.13
tessopen: /usr/local/lib/libopencv_photo.so.2.4.13
tessopen: /usr/local/lib/libopencv_objdetect.so.2.4.13
tessopen: /usr/local/lib/libopencv_legacy.so.2.4.13
tessopen: /usr/local/lib/libopencv_video.so.2.4.13
tessopen: /usr/local/lib/libopencv_ml.so.2.4.13
tessopen: /usr/local/lib/libopencv_calib3d.so.2.4.13
tessopen: /usr/local/lib/libopencv_features2d.so.2.4.13
tessopen: /usr/local/lib/libopencv_highgui.so.2.4.13
tessopen: /usr/local/lib/libopencv_imgproc.so.2.4.13
tessopen: /usr/local/lib/libopencv_flann.so.2.4.13
tessopen: /usr/local/lib/libopencv_core.so.2.4.13
tessopen: CMakeFiles/tessopen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable tessopen"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tessopen.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tessopen.dir/build: tessopen
.PHONY : CMakeFiles/tessopen.dir/build

CMakeFiles/tessopen.dir/requires: CMakeFiles/tessopen.dir/tessopen.cpp.o.requires
.PHONY : CMakeFiles/tessopen.dir/requires

CMakeFiles/tessopen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tessopen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tessopen.dir/clean

CMakeFiles/tessopen.dir/depend:
	cd /home/pi/tessopen && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/tessopen /home/pi/tessopen /home/pi/tessopen /home/pi/tessopen /home/pi/tessopen/CMakeFiles/tessopen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tessopen.dir/depend

