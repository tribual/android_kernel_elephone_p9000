#!/bin/bash
DEFCONFIG=lineage_p9000_defconfig
KERNEL=lineage
if [  -f $KERNEL ]; then
	rm $KERNEL
fi
if [  -f $DEFCONFIG ]; then
	rm $DEFCONFIG
fi
make clean && make mrproper
export CROSS_COMPILE=~/UBERTC-aarch64-linux-android-4.9/bin/aarch64-linux-android-
export ARCH=arm64
make -j12 $DEFCONFIG
make -j12
cp arch/arm64/boot/Image.gz-dtb $KERNEL
