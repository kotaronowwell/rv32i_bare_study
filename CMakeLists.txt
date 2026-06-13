cmake_minimum_required(VERSION 3.28)

project(riscv_hello C ASM)

add_executable(hello
    src/start.S
    src/main.c
    src/uart.c
    src/trap.c
    src/trap.S
)

target_link_options(hello PRIVATE
    -T${CMAKE_SOURCE_DIR}/linker.ld
)

target_compile_options(hello PRIVATE
    -Wall
    -Wextra
)