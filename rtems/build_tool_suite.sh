#!/bin/bash

echo "This script will attempt to build"
echo "the RTEMS tool suite for the ARM"
echo "beagleboneblack BSP."

cd ./src/rsb/rtems
../source-builder/sb-check
../source-builder/sb-set-builder --prefix=../../../prj/rtems6 6/rtems-arm


