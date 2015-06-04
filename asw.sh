#!/usr/bin/env bash

for i in $(seq ${1:-1} ${2:-$(curl -s 'http://asofterworld.com/rssfeed.php' | xmllint --xpath "//item[1]/link/text()" - | grep -Po '\d+')})
do
    html=`curl "http://www.asofterworld.com/index.php?id=$i"`;
    src=`echo $html | sed -n -e 's/.*img width=720 src="//p' | cut -d"\"" -f1`
    name=`echo $src | cut -d"/" -f5`
    number=""
    for j in `seq 1 $(expr 4 - ${#i})`
    do
        number=0$number
    done
    number=$number$i
    echo $number
    name=$number$name
    echo NAME: $name
    wget -O $name $src
done
