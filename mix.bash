#!/bin/bash
ofn=kpat-fcs-with-audio.mkv
rm -f "$ofn"
foo="-af asetpts=PTS-STARTPTS"
foo=""
aud="Organic To Synthetic-458532039.mp3"
aud="Organic To Synthetic-458532039-mod2.wav"
ffmpeg -i "$aud" -i kpat-fcs.mkv -map 1:v -map 0:a -shortest -c:a libvorbis -q:a 7 -c:v copy $foo  "$ofn"
# ffmpeg -i audiodump.wav -i pysolfc-bhs.ogv -map 1:v -map 0:a -shortest -c:a libvorbis -q:a 7 -c:v copy -af asetpts=PTS-STARTPTS pysolfc-bhs-with-audio.ogv

