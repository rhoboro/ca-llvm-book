[作って学ぶコンピュータアーキテクチャ](https://gihyo.jp/book/2022/978-4-297-12914-9)

- [サポートページ](https://github.com/msyksphinz-self/llvm-project/)
- [ソースコード](https://github.com/msyksphinz-self/llvm-project/tree/llvm-myriscvx120)


```sh
# 3章のビルド
# make run で起動した Docker コンテナの中
$ cd llvm-project
$ mkdir build
$ cd build
$ cmake -G Ninja \
  -DDEFAULT_SYSROOT=/llvm_book/riscv64_github/riscv64-unknown-elf \
  -DCMAKE_BUILD_TYPE="Debug" \
  -DLLVM_TARGETS_TO_BUILD="X86;AArch64;RISCV;MYRISCVX" \
  -DLLVM_ENABLE_PROJECTS="clang;libcxx;libcxxabi" \
  ../llvm

# 実際のビルド
$ ninja
# メモリ不足で失敗するので並列数を変えながら何度か繰り返して少しずつ進める
$ ninja -j2
```
