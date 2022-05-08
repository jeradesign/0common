echo .bash_profile

export BASH_SILENCE_DEPRECATION_WARNING=1

export VISUAL='emacsclient'
export CLICOLOR=
export LESS="--no-init"

if [ "$TERM" != dumb ]; then
	PS1="\[\\033[31m\][\u@\h \W]\$\[\\033[0m\] "
fi

alias unp='unpushed --walk --tracked --remote /proj'
alias serial-debug='sudo cu -s 115200 -l /dev/tty.usbserial-*'
alias spoof-JohnBrewerEdison='sudo ifconfig en0 ether 78:4b:87:a1:5e:6b'
alias spoof-WeavedEdison1='sudo ifconfig en0 ether fc:c2:de:3f:ab:96'
alias spoof-uwn200='sudo ifconfig en0 ether 00:0c:43:00:1e:6e'
alias unspoof='sudo ifconfig en0 ether 80:e6:50:18:a2:60'
alias emacs='emacsclient -c'
alias cdproj='cd /proj/Geopogo/iOSGeopogoAR/'
alias port='echo "You mean brew."'

#source ~/bin/cdproj

export PATH="/Applications/Emacs.app/Contents/MacOS/bin":$PATH
export PATH="/usr/local/bin":$PATH
export PATH="/usr/local/sbin:$PATH"

export PATH="~/bin:$PATH"

#export PATH="$PATH:/Applications/Muse"

#export DYLD_FALLBACK_LIBRARY_PATH="$DYLD_FALLBACK_LIBRARY_PATH:/Applications/Muse"

eval "$(/opt/homebrew/bin/brew shellenv)"
