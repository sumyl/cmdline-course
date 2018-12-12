#! /bin/bash

tr '[:upper:]' '[:lower:]' < $1 > output.txt
mv output.txt $1
cat $1 |
tr -s '[:space:]' '\n' |
tr -d '[:punct:]' |
sort | 
uniq -c | 
sort -nr > $2
