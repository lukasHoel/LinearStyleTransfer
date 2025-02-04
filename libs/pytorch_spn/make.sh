#!/usr/bin/env bash

export CXXFLAGS="-std=c++11"
export CFLAGS="-std=c99"

CUDA_PATH=/usr/local/cuda/

cd src/cuda/
echo "Compiling gaterecurrent2dnoind layer kernels by nvcc..."
nvcc -c -o gaterecurrent2dnoind_kernel.cu.o gaterecurrent2dnoind_kernel.cu -x cu -Xcompiler -fPIC -arch=sm_52
cd ../../
python build.py
