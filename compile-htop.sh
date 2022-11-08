#!/bin/bash
cd htop
./autogen.sh
./configure --disable-unicode
make -j9999
make install