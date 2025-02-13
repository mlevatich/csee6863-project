CC        = clang
CFLAGS    = -g3 -std=c99 -pedantic -Wall
USE_SDL   = -D USE_SDL -D_THREAD_SAFE -I/opt/homebrew/include -I/opt/homebrew/include/SDL2
LIBS      = -lSDL2 -lSDL2_mixer -lSDL2_ttf -lm -L/opt/homebrew/lib
NOSDL_OBJ = main-nosdl.o
OBJ       = main.o
SRC       = src

%.o: $(SRC)/%.c
	$(CC) -c -o $@ $< $(CFLAGS) $(USE_SDL)

%-nosdl.o: $(SRC)/%.c
	$(CC) -c -o $@ $< $(CFLAGS)

FormA: $(OBJ)
	$(CC) $(LIBS) -o $@ $^ $(CFLAGS) $(USE_SDL)
	rm -f *.o

NoSDL: $(NOSDL_OBJ)
	$(CC) $(LIBS) -o $@ $^ $(CFLAGS)
	rm -f *.o

clean:
	rm -f FormA NoSDL
