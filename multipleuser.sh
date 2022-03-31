#define a array Define a list having multiple entries
# userlist=`cat user.txt`
# echo $userlist
# for i in $userlist
# do
# id $i 1>/dev/null 2>/dev/null
# if [$? == 0]
# then
#     echo "user exist"
# else
#     echo "user doesnot exist can be created"
#     useradd $i
#     if [ $? == 0 ]
#     then
#         echo "user created successfully"
#     else
#         echo "error in creating user"
#     fi
# fi
# done

list="file1 file2 file3"
for i in $list
do 
    echo  $i
done


