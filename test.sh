#!/bin/bash

update_dir=.muffin-update
temp_dir=.muffin-temp
dirs=(css font ico img _includes js _layouts)

echo "Preparing update.."

mkdir $temp_dir -p

for dir in ${dirs[@]}
do
        mkdir $temp_dir/$dir -p
        cp -a $dir/* $temp_dir/$dir  
done

