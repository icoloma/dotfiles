# See the original at
# https://gist.github.com/PaulKinlan/2fdb0c8a6b6f6a646f87#file-screenrecord-sh

if [ -z "$1" ]; then
  shot_path=$(date +%Y-%m-%d-%H-%M-%S).mp4
else
  shot_path="$*"
fi

ffmpeg="ffmpeg"
n6_frame="n6-background.png"

trap ctrl_c INT

function ctrl_c() {
  echo "** Trapped CTRL-C"
  echo "** Downloading screencast"
  sleep 2
   
  adb shell am broadcast -a com.android.systemui.demo -e command exit
  adb pull /sdcard/Movies/$shot_path .

  echo $ffmpeg
  echo $n6_frame

  if [ -x $(which "$ffmpeg") ] && [ -e "$n6_frame" ]
  then
    echo "great"
    $ffmpeg -i $n6_frame -i $shot_path -filter_complex "[1:v]scale=480:-1[scaled_overlay],[0:v][scaled_overlay]overlay=x=(main_w-overlay_w)/2:y=(main_h-overlay_h)/2" $shot_path-frame.mp4
    $ffmpeg -y -i $shot_path-frame.mp4 -vf fps=10,scale=320:-1:flags=lanczos,palettegen $shot_path-palette.png
    $ffmpeg -i $shot_path-frame.mp4 -i $shot_path-palette.png -filter_complex "fps=10,scale=320:-1:flags=lanczos[x];[x][1:v]paletteuse" $shot_path.gif
  fi
  
  alldone
}

function setup() {
   adb shell settings put global sysui_demo_allowed 1
   adb shell am broadcast -a com.android.systemui.demo -e command network -e mobile show -e datatype lte -e level 4
   adb shell am broadcast -a com.android.systemui.demo -e command battery -e level 100 -e plugged false
   adb shell am broadcast -a com.android.systemui.demo -e command network -e wifi show -e level 4
   # Tweak this if you want the clock to changed
   adb shell am broadcast -a com.android.systemui.demo -e command clock -e hhmm 0440
   # Remove this if you want notifications to be availalbe
   adb shell am broadcast -a com.android.systemui.demo -e command notifications -e visible false
   echo When finished, run: adb shell am broadcast -a com.android.systemui.demo -e command exit
}

function alldone() {
  adb shell am broadcast -a com.android.systemui.demo -e command exit
}

setup

adb shell screenrecord --bit-rate 16000000 /sdcard/Movies/$shot_path

echo "Finished"