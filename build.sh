export LLVM_DIR=$HOME/Programs/llvm61/build/lib/cmake
export LLVM_BUILD_DIR=$HOME/Programs/llvm61/build

make -C Collect

rm -rf build
mkdir build
cd build
cmake -DCMAKE_PREFIX_PATH=$LLVM_BUILD_DIR ..
make

# cp $(pwd)/Instrument/DCCBasilisk.* $LLVM_DIR/../
