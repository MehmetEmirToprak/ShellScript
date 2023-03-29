#!/bin/bash

########################## Task 1 #############################
array=()
echo "Please enter numbers:"

for i in {1..5}; do
    read num
    numbers+=($num)
done 

 echo "${numbers[@]}"

echo "   "
########################## Task 2 #############################

array=(7 8 99 64 21 212 12 55)
for (( i=${#array[@]}-1; i>=0; i-- ))
do  
    echo "${array[$i]}"
done    

echo " "


########################## Task 3 #############################

function is_prime {
    array=$1
    if ((n <= 1)); then
        return 1 
    fi
    for ((i = 2; i*i<=n; i++)); do
       if ((n % i == 0)); then 
            return 1
        fi
    done
    return 0            
}
array=(5 1 6 11 13 9 2 4 7)
is_prime_array=()
for n in "${array[@]}"; do
   if is_prime "$n"; then
        is_prime_array+=("true")
    else 
        is_prime_array+=("false") 
    fi
done

echo "Numbers: ${array[@]}"
echo "Prime: ${is_prime_array[@]}"

echo " "

####################################### Task 4 ####################################################

function sum (){
    total=0
    for array in "$@"; do
        total=$((total + array))
    done
    echo "$total"  
}

array=(1 13 4 7 12 88 21 1 45 6)  

Summary=$(sum "${array[@]}")
echo "Sum: $Summary"

echo "   "