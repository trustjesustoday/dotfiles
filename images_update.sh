#!/bin/bash

cd ~/Pictures/Wallpapr
for f in *\ *; do mv "$f" "${f// /_}"; done
find $(pwd) -maxdepth 1 -type f -not -path '*/\.*' | sort > images.txt
mv images.txt ~
