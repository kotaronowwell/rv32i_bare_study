#define UART0 ((volatile unsigned char*)0x10000000)

void putc(char c) {
    *UART0 = c;
}

void puts(const char *s) {
    while (*s) putc(*s++);
}

void main(void) {
    puts("Hello RV32I Bare Metal!\n");
    while (1);
}

