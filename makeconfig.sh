#!/bin/bash
DEFCONFIG=lineage_p9000_defconfig
make clean && make mrproper
export CROSS_COMPILE=~/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export ARCH=arm64
make -j8 $DEFCONFIG
