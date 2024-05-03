#!/bin/bash

# command to list images with paths in current directory    ls "$PWD"/{*,.*}
# command to create images.txt in current directory         find $(pwd) -maxdepth 1 -type f -not -path '*/\.*' | sort > images.txt

var=$(sort -R images.txt | head -n1)
swaybg -i $var

