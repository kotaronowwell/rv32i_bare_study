.section .text

.global trap_entry

trap_entry:

    csrr a0, mcause
    csrr a1, mepc
    csrr a2, mtval

    call trap_handler

1:
    j 1b