#!/bin/bash
touch "$1"
xclip -o > "$1"
vim "$1"
