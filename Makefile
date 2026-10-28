# WebServer C + Lua + Pallene
CC = clang
CFLAGS = -I/usr/local/include -Wall
LDFLAGS = -L/usr/local/lib -llua -lm -Wl,-E

TARGET = server

.PHONY: all clean run

all: method.so $(TARGET)

# Compile Pallene into a shared library
method.so: method.pln
	pallenec method.pln

$(TARGET): main.c
	$(CC) main.c -o $(TARGET) $(CFLAGS) $(LDFLAGS)

run: all
	LUA_CPATH="./?.so;;" LD_LIBRARY_PATH=/usr/local/lib ./$(TARGET)

clean:
	rm -f $(TARGET) main method.so method.c method.d.pln