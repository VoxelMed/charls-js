#!/bin/sh
mkdir -p build
mkdir -p dist
#(cd build && emconfigure cmake -DCMAKE_BUILD_TYPE=Debug ..)
(cd build && emcmake cmake ..)
(cd build && emmake make VERBOSE=1 -j 16)
cp ./build/src/charlsjs.js ./dist
cp ./build/src/charlsjs.wasm ./dist
(cd test/node; npm run test)
