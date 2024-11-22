#!/bin/bash

echo "This script will attempt to build the RTEMS BSP"
echo "for the ARM beagleboneblack BSP."

cp config.ini ./src/rtems
cd ./src/rtems
./waf configure --prefix=../../prj/rtems6
./waf
./waf install


