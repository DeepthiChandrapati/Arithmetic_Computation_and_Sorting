#!/usr/local/bin/bash -x

echo "Welcome to Arithmetic Computations Program "

read -p "Enter a:  " a
read -p "Enter b:  " b
read -p "Enter c:  " c

declare -A Result

First="$(( $a + $b * $c ))"

Second="$(( $a * $b + $c ))"

Third="$(( $c + $a / $b ))"

Fourth="$(( $a % $b + $c ))"

echo "First Computation is : $First"

echo "Second Computation is : $Second"

echo "Third Computation is: $Third"

echo "Fourth Computation is: $Fourth"

Result=( ["First"]="$First" ["Second"]="$Second"  ["Third"]="$Third"  ["Fourth"]="$Fourth" )


