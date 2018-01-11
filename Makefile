TOOLS := dry flops

CFLAGS := -pipe -Ofast -Wall

all: $(TOOLS)

dry: dry.o dry2.o

clean::
	rm -f $(TOOLS) *.o
