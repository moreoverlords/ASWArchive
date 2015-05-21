#!/bin/bash
fileNames=(`echo ~/asw/*.jpg`)
randomComic=$RANDOM
numComics=${#fileNames[@]}
let 'randomComic %= numComics'
gnome-open ${fileNames[$randomComic]}
