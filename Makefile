TOOLS := dry flops

CFLAGS := -pipe -O3 -Wall -march=native

all: $(TOOLS)

dry: dry.o dry2.o

run: all
	./dry 2>/dev/null
	./flops
clean::
	rm -f $(TOOLS) *.o
