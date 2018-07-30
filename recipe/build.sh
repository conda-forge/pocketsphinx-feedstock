#!/usr/bin/env bash

pushd pocketsphinx-5prealpha

./autogen.sh
./configure --prefix="$PREFIX"
make clean all
make check
make install
popd

pushd pocketsphinx-5prealpha
cp -avf pocketsphinx-5prealpha/model/*  $PREFIX/share/model

