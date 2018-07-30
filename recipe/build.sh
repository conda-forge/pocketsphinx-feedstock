#!/usr/bin/env bash
ls -lh

pushd model

./autogen.sh
./configure --prefix="$PREFIX"
make clean all
make check
make install

popd

cp -avf model/*  $PREFIX/share/model

