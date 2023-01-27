#!/usr/bin/env bash
# Program for using break and continue for loops

for file in *.sh; do
  if [ "$file" = "9_options.sh" ]; then
    echo "Break..."
    break
  elif [[ "$file" == 4* ]]; then
    echo "Contiue..."
    continue
  fi
  echo "$file"
done
