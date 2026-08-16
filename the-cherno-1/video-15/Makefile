# Variables
CXX = g++

# Flags
CXXFLAGS = -Wall -Wextra -std=c++20 -Ires/include
LIBS     = -lglfw -lGL -ldl
DEBUG    = -g -O0
TARGET   = learning-opengl-cpp-thecherno
SRC      = res/src/
OBJS     = main.o $(SRC)gl.o $(SRC)Renderer.o $(SRC)IndexBuffer.o $(SRC)VertexBuffer.o $(SRC)VertexArray.o $(SRC)Shader.o


.PHONY: run clean

run: $(TARGET)
	@echo "Running program..."

$(TARGET): $(OBJS)
	@echo "Linking program..."
	$(CXX) $(CXXFLAGS) $(DEBUG) $(OBJS) -o $(TARGET) $(LIBS)

%.o: %.cpp
	@echo "Building C++ object: $<..."
	$(CXX) $(CXXFLAGS) $(DEBUG) -c $< -o $@

$(SRC)gl.o: $(SRC)gl.c
	@echo "Bulding gl.o..."
	$(CXX) $(CXXFLAGS) $(DEBUG) -c $< -o $@

clean:
	@echo "Cleaning..."
	rm -f $(TARGET) $(OBJS)
