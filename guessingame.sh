#!/usr/bin/bash
filecount=`ls -ltr|wc -l`
echo "Your current directory is `pwd`"
function guess {
echo "Hi, Please guess how many files are in current directory !"
read count
echo "You guesses number of files as $count"
echo "Validating....!!"
}
guess
while [[ $count != $filecount ]] 
do
if [[ $count -lt $filecount ]];then
    echo "Your guess is too low"
    echo "Please try again"
elif [[ $count -gt $filecount ]];then
      echo "Your guess is too high"
      echo "Please try again"
fi
guess
done
echo " Congrats you correctly guessed the file count"