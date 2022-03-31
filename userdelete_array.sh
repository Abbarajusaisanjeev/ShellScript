temp=(user1 user2 user3)
for i in ${temp[@]}
do
    echo $i
    id $i 1>/dev/null 2>/dev/null
    if [ $? == 0 ]
    then 
        echo "user already exists can be deleted"
        userdel $i
        if [ $? == 0 ]
        then 
            echo "user deleted succesfully"
        else 
            echo "error in user deletion"
        fi
    else 
        echo "user doesnot exists cannot be deleted"
    fi
done