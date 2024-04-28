#!/usr/bin/env bash

cd env/python

# MODE=omp python setup.py install

# No OMP packages for now (for consistency with PyPI), those will be available
# once the corresponding PyPI packages are generated.

if [ "$(uname -s)" == "Darwin" ]; then
    export CMAKE_ARGS="-DCMAKE_C_FLAGS=-Wno-c++11-narrowing -DCMAKE_CXX_FLAGS=-Wno-c++11-narrowing"
fi


${PYTHON} -m pip install . -vv
