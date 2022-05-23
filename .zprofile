export VISUAL='emacsclient -c'
export LESS="--no-init --QUIT-AT-EOF --RAW-CONTROL-CHARS"

alias unp='unpushed --walk --tracked --remote /proj'
alias emacs='emacsclient -c'
alias port='echo "You mean brew."'

# Homebrew stuff from /opt/homebrew/bin/brew shellenv

export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

export PATH="/Applications/Emacs.app/Contents/MacOS/bin":$PATH

export PATH="$HOME/bin:$PATH"

cp ~/.bash_profile ~/proj/0common
cp ~/.emacs ~/proj/0common
cp ~/.zprofile ~/proj/0common
cp ~/.zshrc ~/proj/0common
