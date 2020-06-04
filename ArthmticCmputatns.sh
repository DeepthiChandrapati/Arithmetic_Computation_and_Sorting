#!/usr/local/bin/bash -x 

echo "Welcome to Arithmetic Computations Program "

read -p "Enter a:  " a
read -p "Enter b:  " b
read -p "Enter c:  " c

declare -A Result

Calc1="$(( $a + $b * $c ))"

Calc2="$(( $a * $b + $c ))"

Calc3="$(( $c + $a / $b ))"

Calc4="$(( $a % $b + $c ))"

echo "First Computation is : $Calc1"

echo "Second Computation is : $Calc2"

echo "Third Computation is: $Calc3"

echo "Fourth Computation is: $Calc4"

Result=( ["Calc1"]="$Calc1" ["Calc2"]="$Calc2"  ["Calc3"]="$Calc3"  ["Calc4"]="$Calc4" )

echo "${!Result[@]}"

echo "${Result[@]}" 

for (( i=0; i<5; i++ )) 
do
	resultArr[$i]=${Result["Calc"$i]}
done

echo "${resultArr[@]}"

for (( j=1; j<5; j++ ))
do
     for (( k=$j+1; k<5; k++ ))
     do
           if [[ ${resultArr[$j]} -gt ${resultArr[$k]} ]];
           then
                temp=${resultArr[$j]}
                resultArr[$j]=${resultArr[$k]}
                resultArr[$k]=$temp
           fi
     done
done

echo "${resultArr[@]}"
