export VISUAL='emacsclient -c'
export LESS="--no-init"

alias unp='unpushed --walk --tracked --remote /proj'
alias emacs='emacsclient -c'
alias port='echo "You mean brew."'

#source ~/bin/cdproj

#export PATH="$PATH:/Applications/Muse"

#export DYLD_FALLBACK_LIBRARY_PATH="$DYLD_FALLBACK_LIBRARY_PATH:/Applications/Muse"

eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH="/Applications/Emacs.app/Contents/MacOS/bin":$PATH

export PATH="~/bin:$PATH"

cp .bash_profile ~/proj/0common
cp .emacs ~/proj/0common
cp .zprofile ~/proj/0common
cp .zshrc ~/proj/0common
