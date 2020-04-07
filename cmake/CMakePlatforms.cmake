cmake_minimum_required(VERSION 3.2)

if(PLATFORM_NAME)
	return()	# Already set
endif()

# Detect which platform we have
if(${CMAKE_SYSTEM_NAME} STREQUAL "Windows")
	set(PLATFORM_WINDOWS 1)
	set(PLATFORM_NAME "Windows")
elseif(${CMAKE_SYSTEM_NAME} STREQUAL "Darwin")
	if(PLATFORM_IOS)
		set(PLATFORM_NAME "iOS")
	else()
		set(PLATFORM_OSX 1)
		set(PLATFORM_NAME "OS X")
	endif()
elseif(${CMAKE_SYSTEM_NAME} STREQUAL "Linux")
	set(PLATFORM_LINUX 1)
	set(PLATFORM_NAME "Linux")
elseif(${CMAKE_SYSTEM_NAME} STREQUAL "Android")
	set(PLATFORM_ANDROID 1)
	set(PLATFORM_NAME "Android")
else()
	message(FATAL_ERROR "Unknown platform ${CMAKE_SYSTEM_NAME}!")
endif()

message(STATUS "Detected platform: ${PLATFORM_NAME}")
