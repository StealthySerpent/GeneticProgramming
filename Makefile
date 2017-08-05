CFLAGS += -Wall -Wextra -Wfatal-errors -Werror -std=c99
#-lm

OPTS_DEBUG = -O0 -ggdb -fno-inline
OPTS_OPTIMIZED = -O3

CFLAGS += $(OPTS_DEBUG)

all: main

main.exe:
	x86_64-w64-mingw32-gcc -o main.exe main.c geneticAlgorithm.c

main: main.o geneticAlgorithm.o

clean:
	rm -f *.o main main.exe

.PHONY: all clean
