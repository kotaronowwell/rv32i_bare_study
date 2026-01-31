CC = riscv-none-elf-gcc
CFLAGS = -march=rv32i -mabi=ilp32 -nostdlib -nostartfiles -ffreestanding

all: firmware.elf

firmware.elf: start.S main.c linker.ld
	$(CC) $(CFLAGS) -T linker.ld start.S main.c -o $@

clean:
	rm -f firmware.elf

