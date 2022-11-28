#!/usr/bin/env bash
counter=0
touch temp.txt
while true; do
	counter=$(( counter+1 ))
#	./random.sh >>temp.txt 2>>temp.txt
	./random.sh &>>temp.txt
	if [[ "$?" -ne 0 ]]; then
		break
	fi
done
echo "Found error after $counter runs"
cat temp.txt
