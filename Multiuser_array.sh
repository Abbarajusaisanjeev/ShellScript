# #array declaration
# sai=(item1 item2 item3)
# echo ${sai[2]}
# for i in ${sai[@]}
# do 
#     echo $i
# done

temp=(user1 user2 user3)
#echo ${temp[1]}
for i in ${temp[@]}
do 
    echo $i
    id $i 1>/dev/null 2>/dev/null
    if [ $? == 0 ]
    then 
        echo "user already exists"
    else
        echo "user doesnot exists can be created"
        useradd $i
        if [ $? == 0 ]
        then 
            echo "user created successfully"
        else 
            echo "error in user creation"
        fi
    fi
done 