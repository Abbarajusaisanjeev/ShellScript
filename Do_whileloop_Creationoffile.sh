# list="file1 file2 file3"
# for i in $list 
# do 
# echo $i
test -f $i
if [ $? == 0 ]
then 
    echo "file already exists"
else 
    echo "File doesnot exists can be created"
    touch $i
    if [ $? == 0 ]
    then 
        echo "file created sucessfully"
    else 
        echo "Error in file creation"
    fi 
fi
done 
list="file1 file2 file3"
for i in $list
do 
    echo  $i
done
