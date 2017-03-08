#!/bin/sh

for i in `ls /input`
do
    ext=${i#*.} 
    name=${i%*.$ext}
    ffmpeg -i /input/$i -an -c copy /output/$i
    ffmpeg -i /input/$i /output/$name.mp3
    rm /input/$i
done

