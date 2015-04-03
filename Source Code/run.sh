#/bin/bash

if [ ! $# == 3 ]; then
  echo "Usage: $0 query-descriptor query-directory db-file"
  exit
fi

echo "FileName,LB_KIM,LB_KEOGH,LB_KEOGH2,DTW,TIME"
while read fileName count
do
    echo -n "$fileName,"
    ./ucr_dtw "$3" "$2/$fileName" $count 0.05
done < "$1"
