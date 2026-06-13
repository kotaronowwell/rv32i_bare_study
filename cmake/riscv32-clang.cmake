set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR riscv32)

set(CMAKE_C_COMPILER clang)
set(CMAKE_ASM_COMPILER clang)

set(COMMON_FLAGS
    "-target riscv32-unknown-elf"
    "-march=rv32i"
    "-mabi=ilp32"
    "-ffreestanding"
    "-fno-builtin"
    "-nostdlib"
)

string(JOIN " "
    CMAKE_C_FLAGS_INIT
    ${COMMON_FLAGS}
)

string(JOIN " "
    CMAKE_ASM_FLAGS_INIT
    ${COMMON_FLAGS}
)

set(CMAKE_EXE_LINKER_FLAGS_INIT
    "-target riscv32-unknown-elf -fuse-ld=lld -nostdlib"
)