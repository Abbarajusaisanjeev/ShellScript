#Delete the user
#If user exists then delete it
#if not there mention user doesnot exists
read -p "Enter the Username:" username 
echo $username
id $username 1>/dev/null 2>/dev/null
if [ $? == 0 ]
then
    echo "user alredy exists can be deleted"
    userdel $username
    if [ $? == 0 ]
    then
        echo "user deleted succesfully"
    else
        echo "error in user deletion"
    fi
else
    echo "user doesnt exsts cannot be deleted"
    
fi
