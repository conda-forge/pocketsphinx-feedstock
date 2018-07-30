#!/usr/bin/env bash

cp -avf model/*  $PREFIX/share/model

./autogen.sh
./configure --prefix="$PREFIX"
make clean all
make check
make install
