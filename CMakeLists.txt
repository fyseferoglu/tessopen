cmake_minimum_required(VERSION 2.8)

set(CMAKE_BUILD_TYPE Release)
SET(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} /usr/local/lib/cmake/)
project(tessopen)

set(CMAKE_CXX_FLAGS "-Wall -O2 -std=c++0x ")

add_executable(tessopen tessopen.cpp)

# find opencv package
find_package( raspicam REQUIRED )
find_package( OpenCV)
# includes
# set(LEPTONICA_INCLUDE_PATH "/usr/include/leptonica")
set(TESSERACT_INCLUDE_PATH "/usr/local/include/tesseract")

# include_directories(${OpenCV_INCLUDE_DIRS} ${LEPTONICA_INCLUDE_PATH} ${TESSERACT_INCLUDE_PATH})
include_directories(${OpenCV_INCLUDE_DIRS} ${TESSERACT_INCLUDE_PATH})

# libraries
# set(LEPTONICA_LIBS "lept")
set(TESSERAC_LIBS "tesseract")
# set(LIBS ${LIBS} ${OpenCV_LIBS} ${LEPTONICA_LIBS} ${TESSERAC_LIBS})
set(LIBS ${LIBS} ${OpenCV_LIBS} ${TESSERAC_LIBS} ${raspicam_CV_LIBS})
target_link_libraries(tessopen ${LIBS})
