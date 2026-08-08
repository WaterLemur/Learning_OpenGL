# Compiler variable
CXX = g++

# Compiler flags (Warnings enabled, C++20 standard)
CXXFLAGS = -Wall -Wextra -std=c++20
LIBS2 = -lglfw -lGL
LIBS3 = -ldl
DEBUG = -g -O0

# Target executable name and directory
TARGET = learning-opengl-cpp-thecherno-
MAX_VID = 13
VID_NUMBERS := $(shell seq 2 $(MAX_VID))

# Dynamically generates: video-2/learning-opengl-cpp-thecherno-video-2 ... etc.
ALL_TARGETS := $(foreach v,$(VID_NUMBERS),video-$(v)/$(TARGET)video-$(v))

.PHONY: all clean

all: $(ALL_TARGETS)

# --- THE AUTOMATION HAPPENS HERE ---

# Catch video-2 specifically because it does not use Glad
video-2/$(TARGET)video-2: video-2/main.cpp
	$(CXX) $(CXXFLAGS) $< -o $@ $(LIBS2)

# Specific debug override for video-10
video-10/$(TARGET)video-10: video-10/main.cpp video-10/res/src/gl.c
	$(CXX) $(CXXFLAGS) -Ivideo-10/res/include $(DEBUG) $^ -o $@ $(LIBS2) $(LIBS3)

video-11/$(TARGET)video-11: video-11/main.cpp video-11/res/src/gl.c
	$(CXX) $(CXXFLAGS) -Ivideo-11/res/include $(DEBUG) $^ -o $@ $(LIBS2) $(LIBS3)

video-12/$(TARGET)video-12: video-12/main.cpp video-12/res/src/gl.c
	$(CXX) $(CXXFLAGS) -Ivideo-12/res/include $(DEBUG) $^ -o $@ $(LIBS2) $(LIBS3)

video-13/$(TARGET)video-13: video-13/main.cpp video-13/res/src/gl.c
	$(CXX) $(CXXFLAGS) -Ivideo-13$() -Ivideo-13/res/src $(DEBUG) $^ -o $@ $(LIBS2) $(LIBS3)



# Pattern rule: Matches any remaining video-X target (3 through 9) automatically
video-%/$(TARGET)video-%: video-%/main.cpp video-%/res/src/gl.c
	$(CXX) $(CXXFLAGS) -Ivideo-$(*)/res/include $^ -o $@ $(LIBS2) $(LIBS3)


# Automatically cleans up all generated executable targets
clean:
	rm -f $(ALL_TARGETS)
