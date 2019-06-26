#!/bin/sh
./configure --prefix=${path_to_gcc_build}/ \
--program-suffix=-4.8.0 \
--with-gmp=${path_to_gmp}/lib/ \
--with-mpfr=${path_to_mpfr}/lib/ \
--with-mpc=${path_to_mpc}/lib/ \
--with-default-libstdcxx-abi=0 \
--disable-multilib \
--disable-multiarc \
--disable-bootstrap \
--disable-nls \
--disable-shared \
--disable-option-checking \
--enable-static \
--enable-languages=c,c++,fortran \
CC=gcc-6.5.0 \
CXX=g++-6.5.0 \
CFLAGS="-fPIC -g -O2" \
CXXFLAGS="-fPIC -g -O2" \
LDFLAGS="-fPIC"
