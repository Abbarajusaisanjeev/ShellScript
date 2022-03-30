#creating a new user 
#taking input of the user name if it doesnt exists create a new user
read -p "Enter the username:" username
echo $username
id $username 1>/dev/null 2>/dev/null
# if [ $? == 0 ]
# then 
#     echo "user already exists"
# else
#     echo "user doent exists can be created"
#     useradd $username
#     if [ $? == 0 ]
#     then
#         echo "user created succesfully"
#     else 
#         echo "error in user creation"
#     fi
# fi

if [ $? != 0 ]
then 
    echo "user doent exists can be created"
    useradd $username
    if [ $? == 0 ]
    then
        echo "user created succesfully"
    else 
        echo "error in user creation"
    fi
else
    echo "User already exists"
fi