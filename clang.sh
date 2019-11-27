#!/bin/bash

# Script to compile an Android Kernel with Clang Toolchain

# Edit according to your needs

git clone git@github.com:ProtoChuz/linaro-mirror.git -b g4.9-64 gcc64
git clone git@github.com:ProtoChuz/linaro-mirror.git -b 4.9-32 gcc32

# Clone your desired Clang version to a folder named "clang"

export ARCH=arm64
export SUBARCH=arm64
export KBUILD_BUILD_USER=deomani007
export KBUILD_BUILD_HOST=serber

make O=out ARCH=arm64 santoni_defconfig

PATH="$(pwd)/clang/bin:$(pwd)/gcc64/bin:$(pwd)/gcc32/bin:${PATH}" \
make -j$(nproc --all) O=out \
                      ARCH=arm64 \
                      CC=clang \
                      CLANG_TRIPLE=aarch64-linux-gnu- \
                      CROSS_COMPILE=aarch64-linux-android- \
                      CROSS_COMPILE_ARM32=arm-linux-gnueabi-
