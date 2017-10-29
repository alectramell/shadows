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

JOB=($(cat $(pwd)/.776f726b.list))

clear

MULA=$(echo $((1 + RANDOM % 3)))

clear

if [ $MULA == "1" ]
then
	echo "${paper}${bold}${white}CONTACT PICK (${sky}1 of $HCOUNT${white}): ${reset}"
	echo -n "${blue}[${reset}"
	echo -n "${green}PAY${reset}"
	echo -n '$20'
	echo -n "${green}USD${reset}"
	echo -n "${blue}][${reset}"
	echo -n "${JOB[$MIX]}" | xxd -r -p
	echo -n "${blue}]${reset}"
	echo " " | pg

elif [ $MULA == "2" ]
then
	echo "${paper}${bold}${white}CONTACT PICK (${sky}1 of $HCOUNT${white}): ${reset}"
	echo -n "${blue}[${reset}"
	echo -n "${green}PAY${reset}"
	echo -n '$25'
	echo -n "${green}USD${reset}"
	echo -n "${blue}][${reset}"
	echo -n "${JOB[$MIX]}" | xxd -r -p
	echo -n "${blue}]${reset}"
	echo " " | pg

elif [ $MULA == "3" ]
then
	echo "${paper}${bold}${white}CONTACT PICK (${sky}1 of $HCOUNT${white}): ${reset}"
	echo -n "${blue}[${reset}"
	echo -n "${green}PAY${reset}"
	echo -n '$10'
	echo -n "${green}USD${reset}"
	echo -n "${blue}][${reset}"
	echo -n "${JOB[$MIX]}" | xxd -r -p
	echo -n "${blue}]${reset}"
	echo " " | pg
else
	clear
fi

clear

rm $(pwd)/.776f726b.list

clear
