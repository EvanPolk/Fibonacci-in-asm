CC = gcc

ASFLAGS = -S -O2

# Targets
TARGET = fib
SOURCES = Fib.c Main.c
ASSEMBLY = $(SOURCES:.c=.s)
OBJECTS = $(SOURCES:.c=.o)

all: $(TARGET)

# Target to generate assembly files
assembly: $(ASSEMBLY)

%.s: %.c
	$(CC) $(ASFLAGS) $< -o $@

%.o: %.s
	$(CC) -c $< -o $@

# Link object files into binary
$(TARGET): $(OBJECTS)
	$(CC) $^ -o $@

clean:
	rm -f $(ASSEMBLY) $(OBJECTS) $(TARGET)

.PHONY: all clean assembly
