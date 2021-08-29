#!/bin/bash

echo "Checking for links to the old dokuwiki manual."
grep -r dokuwiki $(find docs -name \*html) | grep -v user_manual | grep http
