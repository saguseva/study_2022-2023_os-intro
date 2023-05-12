#!/bin/bash
dir="$2"
cd $dir
find -type f -name "*$1"| wc -l
