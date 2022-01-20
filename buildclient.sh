#!/bin/bash

if [ -d release ]; then
  rm -r release
fi
mkdir release

cp -r "$1"/*.jar release
cp -r "$1"/src/config release
cp -r "$1"/src/mods release
cp -r "$1"/client/README.txt release
cp -r "$1"/client/OptiFine* release/mods

zip --junk-paths thecycle.keligrubb.com.zip release