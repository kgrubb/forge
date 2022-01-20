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

cd release || exit 1
zip -r thecycle.keligrubb.com.zip ./*
cd ~- || exit 1
