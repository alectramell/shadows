#!/bin/bash

clear

source <(curl -s https://raw.githubusercontent.com/alectramell/beacons/master/colors.sh)

clear

wget "https://raw.githubusercontent.com/alectramell/shadows/master/6a6f62.list" -O $(pwd)/.6a6f62.list

clear

echo "JOBS: "
echo -n $(cat $(pwd)/.6a6f62.list) | xxd -r -p
echo " "

read -s -n1

clear

rm $(pwd)/.6a6f62.list

clear
