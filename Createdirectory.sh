#create a script using directory 
#if it is not there ask user to create it
read -p "Enter the directoryname: "  directoryname
echo  $directoryname
test -d $directoryname
if [ $? == 0 ]
then
    echo "Directory already exists"
else
    echo "Directory doesnt exists can be created"
    mkdir $directoryname
    if [ $? == 0 ]
    then
        echo "directory created succesfully"
    else 
        echo "error in directory creation"
    fi
fi
