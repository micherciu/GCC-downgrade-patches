#!/bin/sh
./configure \
CFLAGS="-fPIC -g -O2 " \
CXXFLAGS=" -fPIC -g -O2" \
LDFLAGS=" -m64 " \
--prefix=${PWD}/build/ \
--program-suffix=-6.1.0 \
--with-gmp=${PATH_TO_GMP}/lib/ \
--with-mpfr=${PATH_TO_MPFR}/lib/ \
--with-mpc=${PATH_TO_MPC}/lib/ \
--enable-checking=release \
--enable-languages=c,c++,fortran \
--enable-static \
--disable-bootstrap \
--disable-multiarc \
--disable-multilib