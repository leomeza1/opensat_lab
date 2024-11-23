#!/bin/bash

echo "This script will attempt to build the RTEMS"
echo "libbsd library for the ARM beagleboneblack BSP."

RTEMS_DIR=$PWD

cd $PWD/src/rtems-libbsd
./waf configure --prefix=$RTEMS_DIR/prj/rtems6 \
  --rtems-tools=$RTEMS_DIR/prj/rtems6          \
  --rtems-bsps=arm/beagleboneblack             \
  --buildset=buildset/default.ini
./waf
./waf install

