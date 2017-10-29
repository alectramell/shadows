#!/bin/bash

clear

source <(curl -s https://raw.githubusercontent.com/alectramell/beacons/master/colors.sh)

clear

wget "https://raw.githubusercontent.com/alectramell/shadows/master/4944.list" -O $(pwd)/.4944.list
wget "https://raw.githubusercontent.com/alectramell/shadows/master/6a6f62.list" -O $(pwd)/.6a6f62.list
wget "https://raw.githubusercontent.com/alectramell/shadows/master/7072696365.list" -O $(pwd)/.7072696365.list
wget "https://raw.githubusercontent.com/alectramell/shadows/master/74797065.list" -O $(pwd)/.74797065.list

clear

echo "IDs: "
echo -n $(pwd)/.4944.list | xxd -r -p
echo "EMAILS: "
echo -n $(pwd)/.6a6f62.list | xxd -r -p
echo "PRICES (USD): "
echo -n $(pwd)/.7072696365.list | xxd -r -p
echo "JOB TYPES: "
echo -n $(pwd)/.74797065.list | xxd -r -p

read -s -n1

clear
