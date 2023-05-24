#!/bin/bash
t1=5
t2=10
sem_file="sfile"

while [ -f $sem_file ]
do
  echo "Ожидается освобождение ресурса"
  sleep $t1
done

touch "$sem_file"
echo "Ресурс используется процессом $$"
sleep $t2

rm "$sem_file"
echo "Ресурс освобожден"
