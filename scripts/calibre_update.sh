#!/bin/bash
BASE=/home/action/workspace
cd $BASE
echo "Updating calibre...."
echo "Removing old calibre"
rm -rf $BASE/calibre
mkdir calibre
echo "Downloading calibre..."
wget http://status.calibre-ebook.com/dist/linux64 -O $BASE/calibre.tar.bz2
echo "Extracting calibre..."
for f in $BASE/*.tar.bz2
do
tar xvjf $f -C $BASE/calibre
done
rm $BASE/*.tar.bz2
echo "All done..Calibre Updated!!!"
