#!/usr/bin/env bash

./autogen.sh
./configure --prefix="$PREFIX"
make
make check
make install

mkdir -p $PREFIX/share/model
cp -afv model/*  $PREFIX/share/model
