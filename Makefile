TOOLS := dry flops

CFLAGS := -pipe -Ofast -Wall

all: $(TOOLS)

flops: flops.c
	$(CC) $(CFLAGS) -DUNIX $< -o $@

dry: dry.c
	$(CC) $(CFLAGS) -c $< -o dry1.o
	$(CC) $(CFLAGS) -DPASS2 $< dry1.o -o $@

clean::
	rm -f $(TOOLS) *.o
