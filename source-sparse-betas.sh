#!/bin/bash
#

statefile="sources-beta.txt"

mkdir sources-betas
cd sources-betas
git clone --depth 1 --filter=blob:none --sparse https://github.com/TwoCanPlugIn/EngineDashboard.git
cd EngineDashboard
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources-betas
git clone --depth 1 --filter=blob:none --sparse https://github.com/TwoCanPlugIn/RacingPlugin.git
cd RacingPlugin
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources-betas
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/RooieDirk/Deviation_pi.git  
cd Deviation_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources-betas
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/rgleason/Autopilot-Plugin.git  
cd Autopilot-Plugin
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##
      
cd ../sources-betas
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/douwefokkema/AutoTrackRaymarine_pi.git
cd AutoTrackRaymarine_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##
      
cd ../sources-betas
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/rgleason/autopilot_route_pi.git
cd autopilot_route_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources-betas    
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/rgleason/admiralty_tide_tables_pi.git
cd admiralty_tide_tables_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources-betas    
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/Rasbats/TideFinder_pi.git
cd TideFinder_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##
    
cd ../sources-betas
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/Rasbats/survey_pi.git  
cd survey_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##
    
cd ../sources-betas
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/Rasbats/otidalroute_pi.git   
cd otidalroute_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##
    
cd ../sources-betas
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/Rasbats/SailawayNMEA_pi.git
cd SailawayNMEA_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources-betas
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/Rasbats/UKTides_pi.git
cd UKTides_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources-betas
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/Rasbats/otidalplan_pi.git 
cd otidalplan_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources-betas
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/Rasbats/EarthExplorer_pi.git
cd EarthExplorer_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

