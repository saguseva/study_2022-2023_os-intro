#!/bin/bash

l=1000
while (( l>50 ))
do
  l=$RANDOM
done

for (( i=0; i<l; i++ ))
do
  num=0
  while [[ "$num" -lt 65 ]] || [[ "$num" -gt 122 ]]
  do
    num=$RANDOM
  done
  if [[ "$num" -lt 91 ]] || [[ "$num" -gt 96 ]]
  then
    a=$(printf '%b' $(printf '\\%03o' $num))
    echo -n "$a"
  fi
done
echo " "
