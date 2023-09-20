#!/bin/bash

# Execute the command and save the output to a file
apt list --upgradable > upgradable_packages.txt

# Extract the package names and save them to a separate file
awk -F'/' '{print $1}' upgradable_packages.txt > package_names.txt

rm upgradable_packages.txt

