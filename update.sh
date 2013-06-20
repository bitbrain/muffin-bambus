#!/bin/bash

# bam:bus update script v. 1.0
# Author: Miguel Gonzalez <miguel-gonzalez@gmx.de>
#
# This script updates the latest version of bambus.

update_dir=.muffin-update
temp_dir=.muffin-temp
dirs=(css font ico img _includes js _layouts)
files=(update.sh watch.sh)

echo "Preparing update.."

mkdir $temp_dir -p

for dir in ${dirs[@]}
do
	currentdir=$temp_dir/$dir	

	if [ ! -d $currentdir ]; then
		mkdir $currentdir -p
	fi

        if [ -d $dir ] && [ "$(ls -A $dir)" ]; then
		cp -a $dir/* $currentdir
	fi  
done

for file in ${files[@]}
do
	if [ -f $file ]; then
		cp $file $temp_dir/$file
	fi
done

echo "Download recent version.."

git clone https://github.com/MyRealityCoding/muffin-bambus.git $update_dir

echo "Copying files.."

for dir in ${dirs[@]}
do
	if [ -d $dir ]; then
        	rm -rf $dir
        fi

        mkdir $dir
	cp -a $update_dir/$dir/* $dir
done

for file in ${files[@]}
do
	if [ -f $file ]; then
		rm $file
	fi

	cp $update_dir/$file $file
done

echo "Cleanup.."

rm -rf $update_dir
rm -rf $temp_dir

echo "Done."





