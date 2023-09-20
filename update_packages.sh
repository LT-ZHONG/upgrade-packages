#!/bin/bash

# Read the file containing package names and install each package using apt in a loop
while read -r package_name; do
  if [[ ! -z "$package_name" ]]; then
    sudo apt install "$package_name" -y
  fi
done < package_names.txt

