#!/bin/bash

clear

git add *.md
git add *.sh
git add *.list
git commit -m "shadows"
git push origin master

clear

echo "SHADOWS UPDATED!" | pv -qL 10

sleep 0.5
