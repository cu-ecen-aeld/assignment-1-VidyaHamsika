#!/bin/bash
echo "IN writer script Folder:$1 string:$2"
if [ $# -eq 2 ];then 
if [ -f $1 ];then 
	echo "file exists $(echo $2>$1)"
	cat $1
else
	if [ -b $1 ];then 
		echo "file doesnot exists $(echo $2>$1)"
		cat $1
       else 
	        $(echo $1>fname.txt)
		cat fname.txt
		delim=$(nawk  -F  "/" '{print NF-1}' fname.txt)
		echo "$delim"
		str1=$(cut -d / -f  1-$delim  fname.txt)
	      echo "$str1"
	      echo $(mkdir -p $str1 )
	if [ $? -eq 1 ];then 
		echo "error"
		exit 1
        else 
	echo "file doesnot exists $(echo $2>$1)"
	cat $1
	fi
       rm fname.txt	
	fi 
fi 
else 
	echo "please enter the arguments"
	exit 1;
fi

