#!/bin/bash

# bam:bus update script v. 1.0
# Author: Miguel Gonzalez <miguel-gonzalez@gmx.de>
#
# This script updates the latest version of bambus.

update_dir=.muffin-update
temp_dir=.muffin-temp
dirs=(css font ico img _includes js _layouts)

echo "Preparing update.."

mkdir $temp_dir -p

for dir in $dirs
	mkdir $temp_dir/$dir -p
	cp -a $dir/* $temp_dir/$dir  
done

echo "Download recent version.."

git clone https://github.com/MyRealityCoding/muffin-bambus.git $update_dir

echo "Copying files.."

for dir in $dirs
        rm $dir/*
	cp -a $update_dir/$dir $dir
done

echo "Cleanup.."

rm -r $update_dir
rm -r $temp_dir

echo "Done."





