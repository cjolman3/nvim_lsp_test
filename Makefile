CXX = g++
CXXFLAGS = -std=c++17 -Wall -Iinclude

SRC = $(wildcard src/*.cpp)
OBJ = $(SRC:.cpp=.o)
BIN = program

$(BIN): $(OBJ)
	$(CXX) $(OBJ) -o $@

clean:
	rm -f src/*.o $(BIN)

