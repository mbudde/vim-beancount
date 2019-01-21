#!/bin/bash

for vim in vim-master neovim-master; do
    docker run --rm \
        -a stderr \
        -e VADER_OUTPUT_FILE=/dev/stderr \
        -v $PWD:/testplugin \
        -v $PWD/test:/home \
        vim-beancount \
        $vim -u test/vimrc '+Vader! test/*'
done
