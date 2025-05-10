CXXFLAGS=-O3 -std=c++0x -Wall

SOURCES= $(wildcard *.cpp)

OBJECTS=$(patsubst %.cpp, %.o, $(SOURCES))

TARGET=$(lastword $(subst /, ,$(realpath .)))

CXXFLAGS=-O3 -std=c++0x -Wall -I/opt/homebrew/include -I/opt/homebrew/Cellar/mesa-glu/9.0.3/include/GL

LINKS = -L/opt/homebrew/lib -lglut -lGLU -lGL


CXX=g++

all: $(TARGET)
	@echo ImpulseEngine built

$(TARGET): $(OBJECTS)
	@$(CXX) -v $(CXXFLAGS) -o impulseengine $(OBJECTS) $(LINKS)

clean:
	rm -rf $(OBJECTS) $(TARGET)
