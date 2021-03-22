#!/bin/bash

sudo apt install -y bison build-essential cmake flex git libedit-dev python3 zlib1g-dev libelf-dev libllvm7 llvm-7-dev libclang-7-dev
git clone https://github.com/iovisor/bcc.git
cd bcc; git checkout v0.16.0
mkdir build; cd build
cmake ..
make -h$(nproc)
sudo make install
