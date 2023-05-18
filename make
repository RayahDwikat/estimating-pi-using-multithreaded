CC=mpic++
CFLAGS=-Wall
LIBS=
DEPS =
OBJ = negativempi.o

%.o: %.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)
main: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)
test1: $(OBJ)
	mpirun –n 2 ./pthread
clean:
	rm -f *.o *~ core 