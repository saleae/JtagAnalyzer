project(JtagAnalyzer)

# External library dependancies
find_package(Boost REQUIRED)

# Source files for this project
set_analyzer_sources(JtagAnalyzer
    JtagAnalyzer.cpp
    JtagAnalyzerResults.cpp
    JtagAnalyzerSettings.cpp
    JtagSimulationDataGenerator.cpp
	JtagTypes.cpp
)

# Include files for this project
set_analyzer_includes(JtagAnalyzer
    JtagAnalyzer.h
    JtagAnalyzerResults.h
    JtagAnalyzerSettings.h
    JtagSimulationDataGenerator.h
	JtagTypes.h
)

source_group("Source Files" FILES ${JtagAnalyzer_SOURCES} ${JtagAnalyzer_INCLUDES})

include_directories(${JtagAnalyzer_SOURCE_DIR})
include_directories(${JtagAnalyzer_SOURCE_DIR}/PublicInclude)

add_analyzer_library(JtagAnalyzer "${JtagAnalyzer_SOURCES}" "${JtagAnalyzer_INCLUDES}")
