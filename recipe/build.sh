#!/usr/bin/env bash

pushd pocketsphinx

./autogen.sh
./configure --prefix="$PREFIX"
make clean all
make check
make install
popd

pushd pocketsphinx
cp -avf pocketsphinx/model/*  $PREFIX/share/model

