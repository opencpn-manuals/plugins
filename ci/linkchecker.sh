#!/bin/bash

pip3 install --user -q linkchecker
if linkchecker -r8 docs/index.html &> linkcheck.log; then
    cat linkcheck.log
else
    tail -10 linkcheck.log
    paste_link=$(curl -F 'f:1=<-' ix.io < linkcheck.log)
    echo "Complete linkchecker log is at $paste_link"
fi
