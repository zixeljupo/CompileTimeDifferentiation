# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\CLion 2019.3.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\CLion 2019.3.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Timofey\CLionProjects\CompileTimeDifferentiation

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Timofey\CLionProjects\CompileTimeDifferentiation\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\CompileTimeDifferentiation.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\CompileTimeDifferentiation.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\CompileTimeDifferentiation.dir\flags.make

CMakeFiles\CompileTimeDifferentiation.dir\library.cpp.obj: CMakeFiles\CompileTimeDifferentiation.dir\flags.make
CMakeFiles\CompileTimeDifferentiation.dir\library.cpp.obj: ..\library.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Timofey\CLionProjects\CompileTimeDifferentiation\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CompileTimeDifferentiation.dir/library.cpp.obj"
	C:\PROGRA~2\MIB055~1\2017\COMMUN~1\VC\Tools\MSVC\1411~1.255\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\CompileTimeDifferentiation.dir\library.cpp.obj /FdCMakeFiles\CompileTimeDifferentiation.dir\ /FS -c C:\Users\Timofey\CLionProjects\CompileTimeDifferentiation\library.cpp
<<

CMakeFiles\CompileTimeDifferentiation.dir\library.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CompileTimeDifferentiation.dir/library.cpp.i"
	C:\PROGRA~2\MIB055~1\2017\COMMUN~1\VC\Tools\MSVC\1411~1.255\bin\Hostx86\x86\cl.exe > CMakeFiles\CompileTimeDifferentiation.dir\library.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Timofey\CLionProjects\CompileTimeDifferentiation\library.cpp
<<

CMakeFiles\CompileTimeDifferentiation.dir\library.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CompileTimeDifferentiation.dir/library.cpp.s"
	C:\PROGRA~2\MIB055~1\2017\COMMUN~1\VC\Tools\MSVC\1411~1.255\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\CompileTimeDifferentiation.dir\library.cpp.s /c C:\Users\Timofey\CLionProjects\CompileTimeDifferentiation\library.cpp
<<

CMakeFiles\CompileTimeDifferentiation.dir\main.cpp.obj: CMakeFiles\CompileTimeDifferentiation.dir\flags.make
CMakeFiles\CompileTimeDifferentiation.dir\main.cpp.obj: ..\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Timofey\CLionProjects\CompileTimeDifferentiation\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/CompileTimeDifferentiation.dir/main.cpp.obj"
	C:\PROGRA~2\MIB055~1\2017\COMMUN~1\VC\Tools\MSVC\1411~1.255\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\CompileTimeDifferentiation.dir\main.cpp.obj /FdCMakeFiles\CompileTimeDifferentiation.dir\ /FS -c C:\Users\Timofey\CLionProjects\CompileTimeDifferentiation\main.cpp
<<

CMakeFiles\CompileTimeDifferentiation.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CompileTimeDifferentiation.dir/main.cpp.i"
	C:\PROGRA~2\MIB055~1\2017\COMMUN~1\VC\Tools\MSVC\1411~1.255\bin\Hostx86\x86\cl.exe > CMakeFiles\CompileTimeDifferentiation.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Timofey\CLionProjects\CompileTimeDifferentiation\main.cpp
<<

CMakeFiles\CompileTimeDifferentiation.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CompileTimeDifferentiation.dir/main.cpp.s"
	C:\PROGRA~2\MIB055~1\2017\COMMUN~1\VC\Tools\MSVC\1411~1.255\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\CompileTimeDifferentiation.dir\main.cpp.s /c C:\Users\Timofey\CLionProjects\CompileTimeDifferentiation\main.cpp
<<

CMakeFiles\CompileTimeDifferentiation.dir\common.cpp.obj: CMakeFiles\CompileTimeDifferentiation.dir\flags.make
CMakeFiles\CompileTimeDifferentiation.dir\common.cpp.obj: ..\common.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Timofey\CLionProjects\CompileTimeDifferentiation\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/CompileTimeDifferentiation.dir/common.cpp.obj"
	C:\PROGRA~2\MIB055~1\2017\COMMUN~1\VC\Tools\MSVC\1411~1.255\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\CompileTimeDifferentiation.dir\common.cpp.obj /FdCMakeFiles\CompileTimeDifferentiation.dir\ /FS -c C:\Users\Timofey\CLionProjects\CompileTimeDifferentiation\common.cpp
<<

CMakeFiles\CompileTimeDifferentiation.dir\common.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CompileTimeDifferentiation.dir/common.cpp.i"
	C:\PROGRA~2\MIB055~1\2017\COMMUN~1\VC\Tools\MSVC\1411~1.255\bin\Hostx86\x86\cl.exe > CMakeFiles\CompileTimeDifferentiation.dir\common.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Timofey\CLionProjects\CompileTimeDifferentiation\common.cpp
<<

CMakeFiles\CompileTimeDifferentiation.dir\common.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CompileTimeDifferentiation.dir/common.cpp.s"
	C:\PROGRA~2\MIB055~1\2017\COMMUN~1\VC\Tools\MSVC\1411~1.255\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\CompileTimeDifferentiation.dir\common.cpp.s /c C:\Users\Timofey\CLionProjects\CompileTimeDifferentiation\common.cpp
<<

# Object files for target CompileTimeDifferentiation
CompileTimeDifferentiation_OBJECTS = \
"CMakeFiles\CompileTimeDifferentiation.dir\library.cpp.obj" \
"CMakeFiles\CompileTimeDifferentiation.dir\main.cpp.obj" \
"CMakeFiles\CompileTimeDifferentiation.dir\common.cpp.obj"

# External object files for target CompileTimeDifferentiation
CompileTimeDifferentiation_EXTERNAL_OBJECTS =

CompileTimeDifferentiation.exe: CMakeFiles\CompileTimeDifferentiation.dir\library.cpp.obj
CompileTimeDifferentiation.exe: CMakeFiles\CompileTimeDifferentiation.dir\main.cpp.obj
CompileTimeDifferentiation.exe: CMakeFiles\CompileTimeDifferentiation.dir\common.cpp.obj
CompileTimeDifferentiation.exe: CMakeFiles\CompileTimeDifferentiation.dir\build.make
CompileTimeDifferentiation.exe: CMakeFiles\CompileTimeDifferentiation.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Timofey\CLionProjects\CompileTimeDifferentiation\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable CompileTimeDifferentiation.exe"
	"D:\CLion 2019.3.1\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\CompileTimeDifferentiation.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100162~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100162~1.0\x86\mt.exe --manifests  -- C:\PROGRA~2\MIB055~1\2017\COMMUN~1\VC\Tools\MSVC\1411~1.255\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\CompileTimeDifferentiation.dir\objects1.rsp @<<
 /out:CompileTimeDifferentiation.exe /implib:CompileTimeDifferentiation.lib /pdb:C:\Users\Timofey\CLionProjects\CompileTimeDifferentiation\cmake-build-debug\CompileTimeDifferentiation.pdb /version:0.0  /machine:X86 /debug /INCREMENTAL /subsystem:console kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\CompileTimeDifferentiation.dir\build: CompileTimeDifferentiation.exe

.PHONY : CMakeFiles\CompileTimeDifferentiation.dir\build

CMakeFiles\CompileTimeDifferentiation.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\CompileTimeDifferentiation.dir\cmake_clean.cmake
.PHONY : CMakeFiles\CompileTimeDifferentiation.dir\clean

CMakeFiles\CompileTimeDifferentiation.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\Timofey\CLionProjects\CompileTimeDifferentiation C:\Users\Timofey\CLionProjects\CompileTimeDifferentiation C:\Users\Timofey\CLionProjects\CompileTimeDifferentiation\cmake-build-debug C:\Users\Timofey\CLionProjects\CompileTimeDifferentiation\cmake-build-debug C:\Users\Timofey\CLionProjects\CompileTimeDifferentiation\cmake-build-debug\CMakeFiles\CompileTimeDifferentiation.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\CompileTimeDifferentiation.dir\depend
