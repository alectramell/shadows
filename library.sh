#!/bin/bash

clear

source <(curl -s https://raw.githubusercontent.com/alectramell/beacons/master/colors.sh)

clear

wget "https://raw.githubusercontent.com/alectramell/shadows/master/776f726b.list" -O $(pwd)/.776f726b.list

clear

HCOUNT=$(wc -l < $(pwd)/.776f726b.list)

clear

echo "${paper}${bold}${white}AVAILABLE JOBS (${sky}$HCOUNT${white}): ${reset}"
echo -n "$(cat $(pwd)/.776f726b.list)" | xxd -r -p
echo " " | pg

clear

rm $(pwd)/.776f726b.list

clear
