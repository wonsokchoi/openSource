#!/bin/bash

while true; do
  echo "리눅스가 재미있나요? (yes / no) "
  read answer

  # 입력을 소문자로 변환
  answer=$(echo "$answer" | tr '[:upper:]' '[:lower:]')

  if [[ "$answer" == *"yes" || "$answer" == *"y" ]]; then
    echo "yes"
    break
  elif [[ "$answer" == *"no" || "$answer" == *"n" ]]; then
    echo "no"
    break
  else
    echo "yes 또는 no로만 답해 주세요."
    break
  fi
done

exit 0

