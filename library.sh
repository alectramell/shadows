#!/bin/bash

clear

source <(curl -s https://raw.githubusercontent.com/alectramell/beacons/master/colors.sh)

clear

wget "https://raw.githubusercontent.com/alectramell/shadows/master/776f726b.list" -O $(pwd)/.776f726b.list

clear

HCOUNT=$(wc -l < .776f726b.list)

clear

echo "${blue}HIRING (${green}$HCOUNT${blue}):${reset} "
echo -n "${gold}$(cat $(pwd)/.776f726b.list)${reset}" | xxd -r -p
echo " "

read -s -n1

clear

rm $(pwd)/.6a6f62.list

clear
