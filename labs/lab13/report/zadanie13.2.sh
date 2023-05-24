#!/bin/bash
if [ $1 ]
then
  mfile="/usr/share/man/man1/$1.1.gz"
  if [ -f $mfile ]
  then
    less $mfile
  else
    echo "Отсутствует справка для данной команды"
  fi
else
  echo "Команда не введена"
fi
