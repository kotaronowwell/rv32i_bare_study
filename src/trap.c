#include <stdint.h>

extern void uart_puts(const char*);

static void print_hex(uint32_t v)
{
    static const char hex[] = "0123456789ABCDEF";

    for (int i = 7; i >= 0; --i) {
        char c = hex[(v >> (i * 4)) & 0xF];
        extern void uart_putc(char);
        uart_putc(c);
    }
}

void trap_handler(uint32_t mcause,
                  uint32_t mepc,
                  uint32_t mtval)
{
    uart_puts("\r\nTRAP\r\n");

    uart_puts("mcause=");
    print_hex(mcause);
    uart_puts("\r\n");

    uart_puts("mepc=");
    print_hex(mepc);
    uart_puts("\r\n");

    uart_puts("mtval=");
    print_hex(mtval);
    uart_puts("\r\n");

    while (1) {
    }
}
