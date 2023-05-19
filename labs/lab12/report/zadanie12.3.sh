#!/bin/bash

for ((A=1; A<=$1; A++))
do
    touch "$A.tmp"
done

read -r -p  "Удалить созданные файлы? (y/n)" ans

if [ "$ans" == "y" ]; then 
    for ((A=1; A<=$1; A++))
    do
        rm "$A.tmp"
    done
    echo "Файлы удалены."
elif [ "$ans" == "n" ]; then
    echo "Файлы не удалены."
else
    echo "Некорректный ответ. Файлы не удалены."
fi
