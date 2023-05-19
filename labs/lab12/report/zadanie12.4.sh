#!/bin/bash

tar -czvf "$1".tar.gz `find "$1" -type f -mtime -7`
