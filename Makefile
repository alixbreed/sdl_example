CC=clang++
CFLAGS=-c -Wall -std=c++11
LDFLAGS=-lSDL2
SRC=src/$(SOURCES)
SOURCES=main.cpp
BIN=bin
OBJECTS=$(BIN)/$(SOURCES:.cpp=.o)
EXECUTABLE=$(BIN)/sdl_example

all: $(SRC) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

$(OBJECTS): $(SRC) 
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS) $(EXECUTABLE)