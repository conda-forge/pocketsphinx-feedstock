#!/usr/bin/env bash

./autogen.sh
./configure --prefix="$PREFIX"
make clean all
make check
make install

cp -afv model/*  $PREFIX/share/model
