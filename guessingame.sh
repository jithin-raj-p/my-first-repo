#!/bin/sh

filecount=`ls -la | wc -l`

echo "Your current diectory is `pwd`"

function guess {

        echo "Hi, please guess how many files are there in your current directory"
        read count
        if ! [[ $count =~ ^[0-9]+$ ]];then
                echo " You should enter a valid number"
                exit 0;
        else
                echo "Validating....."
        fi
}

guess

while [[ $count != $filecount ]]
do
        if [[ $count -lt $filecount ]];then
                echo "Your guess is too low.."
        elif [[ $count -gt $filecount ]];then
                echo "Your guess is too high.."
        fi
        guess
done

echo "Congrats You correctly guessed...!!"
