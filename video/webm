#!/bin/bash
# Transform a .mov file to be usable for the web
# Usage: 

# The resulting files can be embedded as:
# <video autoplay muted>
#    <source src="video.mp4" type="video/mp4">
#    <source src="video.webm" type="video/webm">
# </video>

if [ -z "$1" ]; then
  echo "Error: Missing file name"
  echo "Example of use:"
  echo "webm video.mov"
  exit 1;
fi

FILENAME=$(echo "$1" | sed 's/\.[^.]*$//')

#Note: Audio will be dropped. To keep the audio, remove "-an"
# To set a maximum width, add scale=-1:480 (replace 480 with the desired width)

# TAKE CARE: when exporting use pixel ratio 1:1, proportions 16/9 or 4/3, dimensions whatever.

# Transform to MP4
avconv -i $1 -c:v libx264 -an $FILENAME.mp4

# Transform to webm
# http://superuser.com/questions/556463/converting-video-to-webm-with-ffmpeg-avconv
avconv -i $1 -c:v libvpx -an $FILENAME.webm

# Create thumbnail
avconv -itsoffset -4 -i $1 -vcodec png -vframes 1 -an -f rawvideo -s 120x90 -y $FILENAME-snapshot.png