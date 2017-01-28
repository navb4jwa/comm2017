#/bin/bash

echo -n "In the ~/Pictures directory, the number of files is "
find ~/Pictures -types f|wc -1
du -h !/Pictures |awk '{print $1}'

echo "the 3 largest files are"
echo "=================="
du -h ~/Pictures/* | sort -h | tail -3