#!/bin/bash

total=0
cd /home/XenoPanel/servers;

for D in *; do
    if [ -d "${D}" ]; then

    	echo ""
        echo "Checking for abandoned servers..."
        cd /home/XenoPanel/servers/${D}

        for DD in *; do
		    if [ -d "${DD}" ]; then

		        if [ -z "$(ls -A ${DD})" ]; then
				   	
				   	TOTAL=$((TOTAL+1))
		        	LAST=$(stat -c %y ${DD} | cut -d" " -f 1)
		        	echo ""
		        	echo "Directory: /home/XenoPanel/servers/${D}/${DD}"
		        	echo "Last Accessed: ${LAST}"

				fi

		    fi
		done

    fi
done

echo ""
echo "====================================================="
echo "Total Servers Empty: ${TOTAL}"
echo "====================================================="
