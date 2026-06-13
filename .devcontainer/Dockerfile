FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    clang \
    lld \
    llvm \
    cmake \
    ninja-build \
    gdb-multiarch \
    qemu-system-misc \
    git \
    make \
    python3 \
    curl \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace