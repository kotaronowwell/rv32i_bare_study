.section .text
.globl _start

_start:
    la sp, _stack_top

    # mtvec = _exception_handler
    la t0, _exception_handler
    csrw mtvec, t0

    call main
1:  j 1b

