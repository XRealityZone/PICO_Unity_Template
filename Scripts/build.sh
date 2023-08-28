#!/bin/bash

git clean -fdx
# get version name from package.json
version=$(grep -o '"version": *"[^"]*"' package/package.json | grep -o '"[^"]*"$' | grep -o '[^"]*')
mkdir release
# tar all the files in the project to tar.gz
tar czvf release/com.unity.template.picovr-${version}.tgz package
