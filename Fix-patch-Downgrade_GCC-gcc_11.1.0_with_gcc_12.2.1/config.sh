#!/bin/sh
ARCH=x86_64
./configure \
CFLAGS="-fPIC -g -O2 " \
CXXFLAGS=" -fPIC -g -O2" \
LDFLAGS=" -m64 " \
--prefix=${PATH_TO_YOUR_BUILD}/ \
--program-suffix=-11.1.0 \
--with-gmp=${PATH_TO_GMP}/lib/ \
--with-gmp-include=${PATH_TO_GMP}/include/ \
--with-mpfr=${PATH_TO_MPFR}/lib/ \
--with-mpfr-include=${PATH_TO_MPFR}/include/ \
--with-mpc=${PATH_TO_MPC}/lib/ \
--with-mpc-include=${PATH_TO_MPC}/include/ \
--enable-checking=release \
--enable-languages=c,c++,fortran \
--with-system-zlib \
--enable-shared \
--disable-bootstrap \
--disable-multilib
