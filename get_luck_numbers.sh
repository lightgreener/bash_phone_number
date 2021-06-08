#!/bin/env bash

# 

# create a file to store luck number
touch luck_number.txt
# set a available
tmp=
# set 5 times
for i in {1..5}; 
do
	# get how many line in the file
	line=$(wc -l phone.txt |cut -d" " -f1)
	# how big is the pool
	num=$[RANDOM%$line+1]
	# take the line of luck number and substring last 3 digit
	tmp=$(head -$num phone.txt |tail -1|cut -c 8-10)
	# only show last 3 digit
	echo "0431****$tmp" >>luck_number.txt

done
