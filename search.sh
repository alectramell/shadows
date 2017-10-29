#!/bin/bash

clear

source <(curl -s https://raw.githubusercontent.com/alectramell/beacons/master/colors.sh)

clear

wget -O $(pwd)/.shadow.card "https://raw.githubusercontent.com/alectramell/shadows/master/$1.card"

clear

CARD=$(cat $(pwd)/.shadow.card)

clear

VALUE=$(curl -s https://raw.githubusercontent.com/alectramell/shadows/master/value.txt)

clear

echo -n "${blue}DEVELOPER:${reset} "
sed '4!d' $CARD | xxd -r -p
echo " "
echo "${blue}CREDITS: ${gold}$VALUE${reset}"
echo -n "${blue}PURCHASE CONTACT?${reset} (${green}y${reset}/${red}n${reset})${blue}:${reset} "
read -n2 CONTINUE

clear

rm $(pwd)/.shadow.card

clear
