#! /usr/bin/bash

# simple script to download a youtube video and convert it to a .mp4

download() {
	link=$1
	echo "Enter YouTube link: $link"
	wget $link
	mv ~/watch?* ~/yt/downloads
}

convert() {
	

download $1
