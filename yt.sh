#!/bin/bash
while getopts "hvf:" flag; do
 case $flag in
   playlist-mp3) # Handle the -h flag
	if [ "$#" -ne 1 ]; then
		echo "Usage: $0 --audio <playlist_url>"
   		exit 1
	fi
	yt-dlp -f bestaudio --extract-audio --audio-format mp3 '$1'
   ;;
   \?)
   echo "Incorrect flag passed" 
   ;;
 esac
done
