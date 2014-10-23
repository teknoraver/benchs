TOOLS := dry flops
CFLAGS ?= -O3

all: $(TOOLS)

flops: flops.c
	$(CC) $(CFLAGS) -DUNIX $< -o $@ -Wall

dry: dry.c
	$(CC) $(CFLAGS) -c $< -o dry1.o -Wall
	$(CC) $(CFLAGS) -DPASS2 $< dry1.o -o $@ -Wall

run:: $(TOOLS)
	$(foreach t,$^,./$(t);) 2>/dev/null

clean::
	rm -f $(TOOLS) *.o
