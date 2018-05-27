CFLAGS = -Wall -Werror
CC = g++ -c $< -o $@ $(CFLAGS)
.PHONY: all clean

all: clean bin build bin/chessviz

bin/chessviz: build/main.o build/board_print_plain.o build/board_read.o build/board_start.o build/board.o
	g++ $^ -o $@ $(CFLAGS)

build/main.o: src/main.cpp
	$(CC)

build/board_print_plain.o: src/board_print_plain.cpp
	$(CC)

build/board_read.o: src/board_read.cpp
	$(CC)

build/board_start.o: src/board_start.cpp
	$(CC)

build/board.o: src/board.cpp
	$(CC)

build: 
	mkdir build
bin:
	mkdir bin

clean:
	rm -rf build
	rm -rf bin
