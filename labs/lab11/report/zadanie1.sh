#!/bin/bash
name="$(basename "$0")"
bname="$name.sh"
dir="backup"
cp "$0" "${dir}/${bname}"
tar -cvf "${name}.tar.gz" "${dir}/${bname}"
echo "Резервная копия создана"
