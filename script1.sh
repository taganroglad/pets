#!/bin/bash

# Задача 1
echo "Имя пользователя: $USER"
echo "Имя пользователя: $USER"
echo "Имя пользователя: $USER"

# Задача 2
num=0
while [ $num -le 100 ]; do
  echo $num
  num=$((num + 2))
done

# Задача 3
ls -l | cut -d ' ' -f 1 | sort | uniq

# Задача 4
cleanup_directory() {
  if [ -d "$1" ]; then
    find "$1" -type f \( -name "*.bak" -o -name "*.tmp" -o -name "*.backup" \) -delete
  else
    echo "Директория не существует"
  fi
}

# Пример вызова функции для очистки директории
cleanup_directory "/путь/к/директории"

