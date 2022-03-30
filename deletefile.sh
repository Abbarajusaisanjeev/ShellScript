#delete a file if exists if not mention file doesnot exists
read -p "Enter the filename:" filename
echo $filename
test -f $filename #verifying file exists or not
if [ $? == 0 ]
then
    echo "File exist can be deleted"
    rm -rf $filename
    if [ $? == 0 ]
    then
        echo "File got deleted sucessfully"
    else
        echo "error in file deletion"
    fi
else
    echo "file doesnot exists"
fi
