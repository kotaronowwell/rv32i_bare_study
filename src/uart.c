#include <stdint.h>

#define UART0_BASE 0x10000000UL

static volatile uint8_t* const uart =
    (volatile uint8_t*)UART0_BASE;

void uart_putc(char c)
{
    *uart = (uint8_t)c;
}

void uart_puts(const char* s)
{
    while (*s) {
        uart_putc(*s++);
    }
}
