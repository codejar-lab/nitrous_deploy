#!/bin/bash
cd /home/action/
mem=`du -sh | cut -f1 -d "M"`
#echo "used memory : $mem"
if [ $mem -gt 1200 ]; then
	{	
		cd ~
		./workspace/calibre/calibredb list --search 'date:<150daysago and tags:news' | cut -f1 -d " " > tmp.txt
		sed -i '1,1d' tmp.txt 
		sed -i '$d' tmp.txt 
		while read line; do ./workspace/calibre/calibredb remove $line; done < tmp.txt
		rm tmp.txt
		#echo "Removing database"
		#rm -rf /home/action/workspace/library/calibre
	}
fi

