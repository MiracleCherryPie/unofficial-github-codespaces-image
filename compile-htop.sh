#!/bin/bash
cd htop
./autogen.sh
./configure
make -j9999
make install