#!/bin/bash


#

mkdir sources
cd sources
git clone --depth 1 --filter=blob:none --sparse https://github.com/Rasbats/shipdriver_pi.git
cd shipdriver_pi
git sparse-checkout set manual

origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
echo $origin $head  >> ../../sources.txt

cd ../../sources/
git clone --depth 1 --filter=blob:none --sparse https://github.com/Rasbats/otcurrent_pi.git    
cd otcurrent_pi
git sparse-checkout set manual

git config --get remote.origin.url >> ../../sources.txt    
echo -n
git rev-parse HEAD >> ../../sources.txt

