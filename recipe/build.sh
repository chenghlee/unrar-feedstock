#!/usr/bin/env bash

make clean
make -j${CPU_COUNT} \
    CXX="$CXX" CXXFLAGS="$CXXFLAGS" \
    LINK="$CXX" LDFLAGS="$LDFLAGS -pthread" \
    STRIP=true \
    unrar

mkdir -p "${PREFIX}/bin"
install -v -m 755 ./unrar "${PREFIX}/bin"
