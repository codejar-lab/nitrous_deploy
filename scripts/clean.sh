#!/bin/bash
cd /home/action/workspace
mem=`du -sh | cut -f1 -d "M"`
echo "used memory : $mem"
if [ $mem -gt 130 ]; then
	{	
		echo "Removing database"
		#rm -rf /home/action/workspace/library/calibre
	}
else
	{
		echo "Yep..you have more memory"
	}
fi

