
#This should be "~/Docs/test.png"
FileToCopy=$1
echo "Full file name and directory: $FileToCopy"

#This should be "test.png"
FileNameItself=$(basename $1)

#Why is this trying to execute the command? 
echo "This is the file name: $FileNameItself"

#This should be "backup_test.png"
NewFileName="backup_${FileNameItself}"

echo "This should be backup_ :$NewFileName"

#This should be ~/Docs/backup_test.png
#NewFileDest=$(sed -i 's/$FileNameItself/$NewFileName/' $FileToCopy)
echo "The file is saved at ${FileToCopy/$FileNameItself/$NewFileName}"
#echo 'Destination is $NewFileDest'


#Finally copy to the directory
cp "$1" "${FileToCopy/$FileNameItself/$NewFileName}"
