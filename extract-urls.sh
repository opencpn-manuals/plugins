#!/bin/bash

#
# url for plugin sources.
#


here=$(readlink -fn $(dirname $0))
statefile="$here/urls.state"

IFS=' '
while read data; do
   
  #Read the split words into an array based on space delimiter
  read -a strarr <<< "$data"
  echo ${strarr[1]} >> $statefile
  
done < sources.state

