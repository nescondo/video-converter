#! /usr/bin/bash

# simple script to convert a video file to an .flv

#store () {
#	file=$1
#	echo "Enter video file: $file"
#	mv ~/$file ~/video-converter/downloads
#}

convert () {
	vid_type=(.flv .mp4 .avi .mov)
	if [[ $u_type == ${vid_type[0]} ]]; then
		ffmpeg -i $video $video.flv
	elif [[ $u_type == ${vid_type[1]} ]]; then
		ffmpeg -i $video $video.mp4
	elif [[ $u_type == ${vid_type[2]} ]]; then
		ffmpeg -i $video $video.avi
	elif [[ $u_type == ${vid_type[3]} ]]; then
		ffmpeg -i $video $video.mov
	fi
}
		
	
play () {
	vlc = /mnt/c/Users/nesco/C:/Program Files/VideoLAN/VLC/vlc.exe
}

u_type=$1
video=$2
convert $u_type
