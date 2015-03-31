#/bin/bash

while read fileName count
do
    echo -n "$fileName,"
    ./a.out "$2" "/Users/isak-kar/Downloads/Dataset 2/Queries/$fileName" $count 0.05
done < "$1"
