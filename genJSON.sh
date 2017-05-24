#!/bin/bash

echo "["
while read line
do
	const=`echo $line | awk -F"," {'print $1'} | sed s/\|/,/g`
	maj=`echo $line | awk -F"," {'print $3'}`
	winner=`echo $line | awk -F"," {'print $2'}`
	cid=`echo $line | awk -F"," {'print $4'}`
	
	echo "{"
	echo " \"name\": \"$const\","
	echo " \"id\": \"$cid\","
	echo " \"majority\": \"$maj\","
	echo " \"winner\": \"$winner\""
	echo "},"
done < besNew.csv
echo "]"
