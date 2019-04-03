#!/usr/bin/env bash

# Echo each command
set -x

# Exit on error.
set -e

MPPP_VERSION="0.13"
wget https://github.com/bluescarni/mppp/archive/v${MPPP_VERSION}.tar.gz -O mppp.tar.gz
tar xzf mppp.tar.gz
cd mppp-${MPPP_VERSION}
mkdir build
cd build
cmake ../ -DMPPP_WITH_MPFR=YES -DMPPP_WITH_QUADMATH=YES -DCMAKE_INSTALL_PREFIX=~/.local
make install
cd ..
cd ..
rm -fr mppp-${MPPP_VERSION}

set +e
set +x