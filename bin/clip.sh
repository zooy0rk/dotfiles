#!/bin/bash

file=$(mktemp --suffix=.png)
import ${file}
cat ${file} | xclip -sel clip -t image/png
rm -f ${file}
