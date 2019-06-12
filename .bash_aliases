# Note to self... DON'T DELETE THIS FUCKING FILE WITHOUT A FUCKING BACKUP
# YOU FUCKING TWAT!!!

# Aliases

alias cls='clear'
alias ls='ls -rthal --color=always'
alias dir='dir --color=always'
alias ..='cd ..'
alias edit-aliases='sudo nano ~/.bash_aliases'
alias mount-whiskey='sudo mount -t ntfs-3g /dev/sdb1 /media/Whiskey'
alias mount-silver='sudo mount /dev/sdc /media/SilverSix'
alias unmount-whiskey='sudo umount /media/Whiskey'
alias unmount-silver='sudo umount /media/SilverSix'
alias unmount-purple='sudo umount /media/Purple'
alias home='~/Shell\ Files/home.sh'

# Functions

mcd () {
	mkdir -p $1
	cd $1
}

fix-damn-audio () {
	killall pulseaudio
	rm -r ~/.config/pulse/*
	sudo apt install --reinstall alsa-base alsa-utils pulseaudio linux-sound-base libasound2 -y
	pulseaudio-k
	sudo alsa force-reload;
	pulseaudio --start
}

new-mac () {
	sudo ifconfig wlp3s0 down
	sudo macchanger -r wlp3s0
	sudo ifconfig wlp3s0 up
}

# Tizonia Functions

function tiz-focus {

	tizonia --youtube-audio-stream https://www.youtube.com/watch?v=23Ylz5_96XU
}

function tiz-minecraft-nights {
	tizonia --youtube-audio-stream https://www.youtube.com/watch?v=5Kg0IB0GU9s
}

function tiz-relax-botw {
	tizonia --youtube-audio-stream https://www.youtube.com/watch?v=hjQfYEjvJeU
}
