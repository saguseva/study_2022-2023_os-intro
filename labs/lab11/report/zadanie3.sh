#!/bin/bash
if [ -n "$1" ]
then
 dir="$1"
 cd -e $dir
 for file in *
 do
  if [ -d "$file" ]
  then
   echo "$file is a directory"
  fi
  if [ -f "$file" ]
  then
   echo "$file is a file"
  fi
  if [ -r "$file" ]
  then
   echo "доступен для чтения"
  else
   echo "недоступен для чтения"
  fi
  if [ -w "$file" ]
  then
   echo "доступен для записи"
  else
   echo "недоступен для записи"
  fi
  if [ -x "$file" ]
  then
   echo "доступен для исполнения"
  else
   echo "недоступен для исполнения"
  fi
  printf "\n"
 done
else
 for file in *
 do
  if [ -d "$file" ]
  then
   echo "$file is a directory"
  fi
  if [ -f "$file" ]
  then
   echo "$file is a file"
  fi
  if [ -r "$file" ]
  then
   echo "доступен для чтения"
  else
   echo "недоступен для чтения"
  fi
  if [ -w "$file" ]
  then
   echo "доступен для записи"
  else
   echo "недоступен для записи"
  fi
  if [ -x "$file" ]
  then
   echo "доступен для исполнения"
  else
   echo "недоступен для исполнения"
  fi
  printf '\n'
 done
fi
