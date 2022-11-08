#!/bin/bash
cd htop
./autogen.sh
./configure --disable-unicode
make -j2
make install