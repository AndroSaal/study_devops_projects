#!/bin/bash

curl -O https://releases.llvm.org/12.0.0/tools/clang-tools-extra/12.0.0/clang-format-12.0.0.tar.gz
tar -xzvf clang-format-12.0.0.tar.gz
cd clang-format-12.0.0
./configure
make
sudo make install

# Проверка установки
which clang-format

echo "Installation of clang-format completed."