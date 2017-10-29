#!/bin/bash

clear

source <(curl -s https://raw.githubusercontent.com/alectramell/beacons/master/colors.sh)

clear

wget "https://raw.githubusercontent.com/alectramell/shadows/master/776f726b.list" -O $(pwd)/.776f726b.list

clear

HCOUNT=$(wc -l < $(pwd)/.776f726b.list)

clear

echo "${gold}AVAILABLE JOBS (${blue}$HCOUNT${gold}): ${reset}"
echo -n "$(grep 10 $(pwd)/776f726b.list)" | xxd -r -p
echo " "
echo -n "$(grep 20 $(pwd)/776f726b.list)" | xxd -r -p
echo " "
echo -n "$(grep 30 $(pwd)/776f726b.list)" | xxd -r -p
echo " "
echo -n "$(grep 40 $(pwd)/776f726b.list)" | xxd -r -p
echo " "
echo -n "$(grep 50 $(pwd)/776f726b.list)" | xxd -r -p
echo " " | pg

clear

rm $(pwd)/.776f726b.list

clear
