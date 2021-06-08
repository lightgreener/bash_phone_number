#/bin/env bash

#

# create a file to store numbers
touch phone.txt
# need 500
for ((i=1;i<=500;i++));
do
	# set a available to record
	temp=
	# generate 6 numbers
	for j in {1..6};do
		# get a number
		a=$[RANDOM%10]
		#append to string
		temp=$temp$a
	done
	# keep number generated to file
echo "0431$temp" >>phone.txt

done
