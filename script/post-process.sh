#!/bin/bash
TOOLSPATH=$1
HOST=$2
ARCH=$3
export SUDO_ASKPASS=../script/ask-pass.sh
echo $SUDO_ASKPASS
echo "Installing include files in $TOOLSPATH/$HOST/include"
sudo cp -f ../src/codec2.h $TOOLSPATH/$HOST/include
echo "Installing library file: libcodec2.a in $TOOLSPATH/$HOST/lib"
sudo cp -f ./libcodec2.a $TOOLSPATH/$HOST/lib
sudo cp -f ./libcodec2_kernel.a $TOOLSPATH/$HOST/lib

exit 0