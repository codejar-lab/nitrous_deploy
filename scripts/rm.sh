#!bin/bash
./workspace/calibre/calibredb list --search 'date:<18daysago and tags:news' | cut -f1 -d " " > tmp.txt
sed -i '1,1d' tmp.txt 
sed -i '$d' tmp.txt 
while read line; do ./workspace/calibre/calibredb remove $line; done < tmp.txt
rm tmp.txt