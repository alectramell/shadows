#!/bin/bash

clear

source <(curl -s https://raw.githubusercontent.com/alectramell/beacons/master/colors.sh)

clear

wget "https://raw.githubusercontent.com/alectramell/shadows/master/776f726b.list" -O $(pwd)/.776f726b.list

clear

HCOUNT=$(wc -l < $(pwd)/.776f726b.list)

clear

MIX=$(echo $((0 + RANDOM % $HCOUNT)))

clear

YPAY=$(echo $(($HCOUNT * 2)))

clear

XPAY=$(echo $(($YPAY - 2)))

clear

JOB=($(cat $(pwd)/.776f726b.list))

clear

echo "${paper}${bold}${white}PLAYERS (${sky}$HCOUNT${white}): ${reset}"
echo -n "${green}[${reset}"
echo -n "\$$XPAY USD"
echo -n "${green}]${reset} go to ${sky}TICKET NUMBER${reset} "
echo -n "${blue}[${reset}"
echo -n "${JOB[$MIX]}" | xxd -r -p
echo -n "${blue}]${reset}"
echo " " | pg

clear

rm $(pwd)/.776f726b.list

clear
