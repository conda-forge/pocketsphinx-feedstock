#!/usr/bin/env bash

cp -afv model/*  $PREFIX/share/model

./autogen.sh
./configure --prefix="$PREFIX"
make clean all
make check
make install

