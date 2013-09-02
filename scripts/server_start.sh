#!/bin/bash
#run calibre server
configpath=/home/action/workspace
. $configpath/config.sh

LIB=~/workspace/library
touch tmp.txt
.$CALIBRE/calibre-server --with-library=$LIB --pidfile=tmp.txt
