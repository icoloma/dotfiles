# usage: record_video ~/Video/file.mp4
alias record_video='avconv -v warning -f alsa -i default -f x11grab -r 15 -s wxga -i :0.0 -vcodec libx264 -preset ultrafast -threads auto -y -metadata title="Captured video" -strict experimental '
