#!/bin/bash
set -e

for file in $(ls -ap | grep '^\.' | grep -v '/$'); do
    ln -sv $(pwd)/${file} ~/${file}
done
