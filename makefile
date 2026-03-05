CC = riscv-none-elf-gcc
CFLAGS = -march=rv32i_zicsr -mabi=ilp32 -nostdlib -nostartfiles -g -O0

all: firmware.elf

firmware.elf: start.S exception.S main.c linker.ld
	$(CC) $(CFLAGS) -T linker.ld start.S exception.S main.c -o $@

clean:
	rm -f firmware.elf

