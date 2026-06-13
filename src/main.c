void uart_puts(const char*);

static int counter;

int main(void)
{
    if (counter == 0)
        uart_puts("BSS OK\r\n");
    else
        uart_puts("BSS FAIL\r\n");

    while (1) {
    }
}
