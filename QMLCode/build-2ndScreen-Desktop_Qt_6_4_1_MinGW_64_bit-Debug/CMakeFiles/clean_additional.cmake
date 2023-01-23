# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "2ndScreen_autogen"
  "CMakeFiles\\2ndScreen_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\2ndScreen_autogen.dir\\ParseCache.txt"
  )
endif()
