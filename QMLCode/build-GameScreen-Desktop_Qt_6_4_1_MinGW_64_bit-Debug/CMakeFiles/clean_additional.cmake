# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\GameScreen_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\GameScreen_autogen.dir\\ParseCache.txt"
  "GameScreen_autogen"
  )
endif()
