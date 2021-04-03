#!/bin/bash

#This will capture the directory the user wanted from the command line
ListThisDirectory=$1
printf "%s\n" "$1"


#This will create an array of all the file names in the user specified Directory
FileNameArray=($(ls $1))


#This loop successfully printed out the contents of FileNameArray

for EachFileName in "${FileNameArray[@]}"
do
	printf "%s\n" "$EachFileName"
done


FileMd5Array=($(find $1 -maxdepth 1 -type f -exec md5sum {} \; | cut -d " " -f1))

#printf "before for"

for EachMd5 in "${FileMd5Array[@]}"
do 
	printf "%s\n" "$EachMd5"
done 
#printf "after for"


#Double For loop to look through each md5
for ((k=0;k<${#FileMd5Array[@]};k++))
do

	for ((j=k+1;j<${#FileMd5Array[@]};j++))
        do
	#	echo "K's md5 ${FileMd5Array[k]}"
	#	echo "J's md5 ${FileMd5Array[j]}"

		if [ "${FileMd5Array[k]}" == "${FileMd5Array[j]}" ]
                then
                        printf "hi\n"
                	 printf "%s and %s have the same md5" "${FileNameArray[k]}" "${FileNameArray[j]}"
			echo ""       
       		fi

        done


done





