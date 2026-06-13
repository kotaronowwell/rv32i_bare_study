.section .text.start

.global _start

.extern main
.extern trap_entry

.extern __bss_start
.extern __bss_end

_start:

    la sp, _stack_top

    #
    # clear .bss
    #
    la t0, __bss_start
    la t1, __bss_end

1:
    bgeu t0, t1, 2f

    sw zero, 0(t0)

    addi t0, t0, 4
    j 1b

2:

    #
    # install trap vector
    #
    la t0, trap_entry
    csrw mtvec, t0

    call main

3:
    j 3b