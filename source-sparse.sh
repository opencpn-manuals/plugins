#!/bin/bash
#

statefile="sources.txt"

mkdir sources
cd sources
git clone --depth 1 --filter=blob:none --sparse https://github.com/Rasbats/shipdriver_pi.git
cd shipdriver_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --depth 1 --filter=blob:none --sparse https://github.com/Rasbats/otcurrent_pi.git    
cd otcurrent_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/Rasbats/photolayer_pi.git    
cd photolayer_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/Rasbats/DR_pi.git    
cd DR_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##
      
cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/rgleason/watchdog_pi
cd watchdog_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##
      
cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/jongough/ocpn_draw_pi.git 
cd ocpn_draw_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources    
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/opencpn-radar-pi/radar_pi.git 
cd radar_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources    
git clone --branch mnt151-frontend2 --single-branch --depth 1 --filter=blob:none --sparse https://github.com/rgleason/dashboard_tactics_pi.git
cd dashboard_tactics_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##
    
cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/Rasbats/vfkaps_pi.git    
cd vfkaps_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##
    
cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/Rasbats/sar_pi.git    
cd sar_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##
    
cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/nohal/aisradar_pi.git   
cd aisradar_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/nohal/vdr_pi.git   
cd vdr_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/nohal/gecomapi_pi.git   
cd gecomapi_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/nohal/iacfleet_pi.git   
cd iacfleet_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/nohal/launcher_pi.git   
cd launcher_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/nohal/ocpndebugger_pi.git   
cd ocpndebugger_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/nohal/objsearch_pi.git   
cd objsearch_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/rgleason/chartscale_pi.git   
cd chartscale_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/rgleason/projections_pi.git   
cd projections_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/rgleason/celestial_navigation_pi.git   
cd celestial_navigation_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/rgleason/plots_pi.git   
cd plots_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/rgleason/weatherfax_pi.git   
cd weatherfax_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/rgleason/climatology_pi.git   
cd climatology_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/rgleason/weather_routing_pi.git   
cd weather_routing_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/rgleason/statusbar_pi.git   
cd statusbar_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/rgleason/pypilot_pi.git   
cd pypilot_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/rgleason/rotationctrl_pi.git   
cd rotationctrl_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/rasbats/calculator_pi.git   
cd calculator_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/rasbats/otidalplan_pi.git   
cd otidalplan_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/bdbcat/ofc_pi.git
cd ofc_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/bdbcat/nvc_pi.git
cd nvc_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/bdbcat/s63_pi.git
cd s63_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/bdbcat/oeSENC_pi.git
cd oeSENC_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##
    
cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/bdbcat/bsb4_pi.git
cd bsb4_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/rgleason/LogbookKonni_pi.git   
cd LogbookKonni_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/rgleason/FindIt_pi.git   
cd FindIt_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/rgleason/route_pi.git   
cd route_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/rgleason/tactics_pi.git   
cd tactics_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/rgleason/polar_pi.git   
cd polar_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/RooieDirk/NmeaConverter_pi.git
cd NmeaConverter_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/LennartG-Sve/GPS-Odometer_pi.git
cd GPS-Odometer_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/jongough/windvane_pi.git
cd windvane_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
##

cd ../sources
git clone --branch master --single-branch --depth 1 --filter=blob:none --sparse https://github.com/rgleason/rtlsdr_pi.git
cd rtlsdr_pi
git sparse-checkout set manual

#
origin=$(git config --get remote.origin.url)
head=$(git rev-parse HEAD)
dir=${PWD##*/}
cd ..
echo "./"$dir $origin $head  >> $statefile
## 
