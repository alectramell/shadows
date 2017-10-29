#!/bin/bash

clear

git add *.md
git add *.sh
git add *.txt
git add *.card
git commit -m "shadows"
git push origin master

clear

echo "SHADOWS UPDATED!" | pv -qL 10

sleep 0.5
