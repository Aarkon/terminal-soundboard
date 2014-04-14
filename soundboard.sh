#! /bin/bash
# path for the sound files be put in
path=/home/username/sounds
$choice
$clip

# main menue
menu() {
  for file in “$path”/* ; do
  i=$(( i+1 ))
  clip[$i]=$file
  echo
  echo $i: ${file##*/}
  done
  echo
  read -n 1 -p “Which sound do you want to be played? ” choice
  echo ${clip[$choice]}
  play
}

# playing
play() {
  mplayer ${clip[$choice]}
  i=o
  menu
}

menu
