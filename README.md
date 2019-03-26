### This is a simple way to create a LLVM pass outside the LLVM tree

The commands below will build the pass inside the `build` folder.

```bash
mkdir build

LLVM_DIR=path/to/llvm/build/lib/cmake cmake -H. -Bbuild && make -C build

$ path/to/llvm/build/bin/opt -load MyPass.so -help | grep Pass
-MyLLVMPass                                     - My LLVM Pass description

```

![arnoldao](https://media.giphy.com/media/3otPoIRRO0TlyZAuT6/giphy-downsized.gif)
