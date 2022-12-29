#!/bin/bash
filesdir=$1
searchstr=$2
if [ $# -ne 2 ];then
echo "please provide the path and the string"
exit 1
else 
	if [ -d $filesdir ];then
		#echo "file exits"
		cd $filesdir;
	      	pwd;
		echo The number of files are $(find $filesdir -type f | wc -l) and the number of matching lines are $(egrep -nRE $2|wc -l)
		
	else
		#echo "file doesnot exist"
		exit 1
	fi

fi
