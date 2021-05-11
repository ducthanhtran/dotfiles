#!/bin/bash
set -e

for file in $(ls -ap | grep '^\.' | grep -v '/$'); do
    if [[ ! -L ~/${file} ]]  && [[ ! -e ~/${file} ]] ; then
        ln -sv $(pwd)/${file} ~/${file}
    fi
done
