#!/usr/local/bin/bash 

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


