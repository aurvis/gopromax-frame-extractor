#!/bin/bash

pushd () {
    command pushd "$@" > /dev/null
}

popd () {
    command popd "$@" > /dev/null
}

mkdir bin
mkdir dependencies

#
# install EAC to Equirectangular conversion binary
#
pushd dependencies && \
git clone git@github.com:aurvis/max2sphere-batch && \
pushd max2sphere-batch && \
make -j && \
cp MAX2spherebatch ../../bin/
popd
popd 

