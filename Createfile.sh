#create a file
#ask user provide the file name
#check whether the file name exists or not
#Then Create a file
#verify the file succesfully created or not
read -p "Enter the filename:" filename
echo $filename
test -f $filename
if [ $? == 0 ]
then 
    echo "file already exists"
else
    echo "file not exists can be created"
    touch $filename
    if [ $? == 0 ]
    then
        echo "file created successfully"
    else
        echo "error in creating the file"
    fi
fi