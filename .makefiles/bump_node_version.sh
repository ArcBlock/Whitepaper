#!/bin/bash

cur_ver=$(cat package.json | grep version |  awk '{print $2}' | sed 's/"//g' | sed 's/,//g')
new_ver=$(cat version)
cat package.json | sed "s/"${cur_ver}"/${new_ver}/g" >  package.json.tmp
mv package.json.tmp package.json