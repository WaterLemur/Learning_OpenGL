# Compiler configuration
CXX      = g++
CXXFLAGS = -Wall -Wextra -O2 -I./include

# Output execution file name
TARGET   = opengl_triangle

# Local source dependencies matching Glad 2 structure
SRCS     = main.cpp src/gl.c

# Direct dependencies and system architecture linkages
LIBS     = -lglfw -ldl -lGL

all: $(TARGET)

$(TARGET): $(SRCS)
	$(CXX) $(CXXFLAGS) $(SRCS) $(LIBS) -o $(TARGET)

clean:
	rm -f $(TARGET)

