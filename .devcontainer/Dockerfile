FROM ubuntu:24.04

# Create 'riscv' user
ARG USERNAME=riscv
ARG UID=1000
ARG GID=1000

ARG WORKSPACE=/workspace

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

RUN userdel -r ubuntu

RUN groupadd -g ${GID} ${USERNAME} \
    && adduser --disabled-password --gecos '' --uid $UID --gid $GID ${USERNAME} \
    && chsh -s /bin/zsh ${USERNAME} \
    && mkdir -p ${WORKSPACE} \
    && chown ${USERNAME} ${WORKSPACE}

WORKDIR ${WORKSPACE}
USER ${USERNAME}