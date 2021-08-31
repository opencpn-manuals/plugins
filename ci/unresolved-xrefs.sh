#!/bin/bash

echo Checking for unresolved Antora xrefs
grep -r "page unresolved" docs || echo "None found"
