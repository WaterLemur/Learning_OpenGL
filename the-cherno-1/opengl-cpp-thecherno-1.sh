#!/bin/bash

read -p "Enter video number (e.g., 2):" vid_num

if [[ ! "$vid_num" =~ ^[0-9]+$ ]]; then
	echo "Error: Please enter a valid number."
	exit 1
fi

FOLDER="video-$vid_num"
BINARY="./video-$vid_num/learning-opengl-cpp-thecherno-video-$vid_num"

if [ -x "$BINARY" ]; then
	echo "Running program..."
	gdb "$BINARY"
else
	echo "Error: Executable not found at $BINARY"
	echo "Did you run 'make' first?"
	exit 1
fi
