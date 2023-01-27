#!/usr/bin/env bash
# Program to understand the nested if behavior

classNote=0
age=0

echo "If else"
echo -e "\n"
read -r -n1 -p "Type youre note (1-9): " classNote
echo -e "\n"
read -r -n2 -p "type youre age: " age
echo -e "\n"

if [ \( "$classNote" -ge 7 \) ]; then
  echo "The alumn aprove"
  read -r -p "The student will continue studying here? (s/n): " continue
  if [ "$continue" == "s" ]; then
    echo "Welcome to next level"
  else
    echo "Thanks for been with us so far"
  fi

else
  echo "The alumn does not aprove"
fi

if [ "$age" -lt 18 ]; then
  echo "You cannot pay"
else
  echo "You can pay"
fi
