#!/bin/bash  
function congrats {
    echo Congratulations! You are right!
}
echo "Please guess how many files are in the current directoty."
echo "Please enter a number:"
read response
var=$(ls | wc -l)
if [[ $response -eq $var ]]
then 
    congrats
else 
    while [[ $response -ne $var ]]
    do 
        if [[ $response -gt $var ]]
        then 
            echo Wrong. Please enter a smaller number:
            read response
        elif [[ $response -lt $var ]]
        then
            echo Wrong. Please eneter a larger number:
            read response
        fi
    done
    congrats
fi

