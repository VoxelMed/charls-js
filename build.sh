#!/bin/sh
mkdir -p build
#(cd build && emconfigure cmake -DCMAKE_BUILD_TYPE=Debug ..)
(cd build && emconfigure cmake ..)
(cd build && emmake make VERBOSE=1 -j 8)
cp ./build/src/charls-js.* ./dist
(cd test/node; npm run test)