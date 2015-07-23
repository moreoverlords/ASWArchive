#!/usr/bin/env bash

for i in $(seq ${1:-1} ${2:-$(curl -s 'http://asofterworld.com/rssfeed.php' | xmllint --xpath "//item[1]/link/text()" - | grep -Po '\d+')}); do
    src="$(curl -s "http://www.asofterworld.com/index.php?id=$i" | xmllint --html --xpath '//div[@id="comicimg"]/img/@src' - 2>/dev/null | cut -d\" -f2)"
    name="$(printf "%04d$(cut -d/ -f5 <<<"$src")" $i)"
    wget -O $name $src
done
