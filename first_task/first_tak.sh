#!/bin/bash

if  [ -z "$2" ];then
    echo 'Не передали расширение'
    exit 2
fi

if  [ -z "$1" ];then
    echo 'Нет названия файла'
    exit 1
fi
  
file_name=$1
new_ext=$2
 
echo "$file_name -> ${file_name%.*}.$new_ext"
mv "$file_name" "${file_name%.*}.$new_ext"
