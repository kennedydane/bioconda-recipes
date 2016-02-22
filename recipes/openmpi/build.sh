#!/bin/bash

mkdir build; cd build
../configure --prefix=${PREFIX}
make -j"${CPU_COUNT}"
make install

#mkdir gromacs-build; cd gromacs-build
#cmake .. -DGMX_MPI=OFF -DGMX_GPU=OFF -DGMX_BUILD_OWN_FFTW=ON -DGMX_BUILD_SHARED_EXE=OFF -DCMAKE_INSTALL_PREFIX=${PREFIX}
#make -j6
#make install
