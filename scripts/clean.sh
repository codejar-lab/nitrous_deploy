#!/bin/bash
cd /home/action/
mem=`du -sh | cut -f1 -d "M"`
#echo "used memory : $mem"
if [ $mem -gt 800 ]; then
	{	
		#echo "Removing database"
		rm -rf /home/action/workspace/library/calibre
	}
fi

