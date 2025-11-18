CXX = ./g++_wrapper_for_make.sh
CXXFLAGS = -std=c++17 -Wall -Iinclude

SRC = $(wildcard src/*.cpp)
OBJ = $(SRC:.cpp=.o)

all: program compile_commands.json

%.o: %.cpp
	$(CXX) $< $(CXXFLAGS) -c -o $@

program: $(OBJ)
	g++ $(OBJ) -o program

compile_commands.json: $(OBJ)
	@bash -c ' \
	echo "[" > compile_commands.json; \
	sed "$$ s/,$$//" compile_commands.raw.json >> compile_commands.json; \
	echo "]" >> compile_commands.json \
	'

clean:
	rm -f src/*.o program compile_commands.raw.json compile_commands.json

