#!/usr/bin/env bash

cd env/python

# MODE=omp python setup.py install

# No OMP packages for now (for consistency with PyPI), those will be available
# once the corresponding PyPI packages are generated.

if [ "$(uname -s)" == "Darwin" ]; then
    export CFLAGS="${CFLAGS} -Wno-c++11-narrowing -Wno-unused-command-line-argument"
    export CXXFLAGS="${CXXFLAGS} -Wno-c++11-narrowing -Wno-unused-command-line-argument"
fi


${PYTHON} -m pip install . -vv
