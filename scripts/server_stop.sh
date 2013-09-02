#!/bin/bash
#stop calibre server
pid=`cat tmp.txt`
kill $pid
rm tmp.txt
