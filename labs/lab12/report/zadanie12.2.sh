#!/bin/bash

./zadanie12.2c

case $? in
1) echo "n>0";;
2) echo "n<0";;
0) echo "n=0";;
esac
