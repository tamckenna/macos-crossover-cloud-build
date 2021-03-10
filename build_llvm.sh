#!/usr/bin/env bash

set -ex

export PATH="$(brew --prefix bison)/bin:${PATH}"

echo "Compiling LLVM..."
pushd sources/clang/llvm
mkdir -p build
cd build
cmake ../
make -j ${PARALLEL_JOBS}
popd

echo "LLVM Compile done"