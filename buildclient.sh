#!/bin/bash

if [ -d release/"$1" ]; then
  rm -r release/"$1"
fi
mkdir -p release
mkdir release/"$1"

cp -r "$1"/*.jar release/"$1"
cp -r "$1"/src/config release/"$1"
cp -r "$1"/src/mods release/"$1"
cp -r "$1"/client/* release/"$1"

cd release/"$1" || exit 1
zip -r "$1"-thecycle.keligrubb.com.zip ./*
cd ~- || exit 1
