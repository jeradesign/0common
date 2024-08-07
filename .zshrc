# Initialization for all *interactive* shells
# (As opposed to shell scripts)

# Set up shell prompt
PROMPT='%F{red}[%n@%m %1~]%#%f '

# Activate auto completion
autoload -Uz compinit && compinit

# Set up aliases
alias unp='unpushed --walk --tracked --remote /proj'
alias emacs='emacsclient -c'
alias port='echo "You mean brew."'
alias ows='open /Applications/Xcode.app *.xcworkspace'
alias opr='open /Applications/Xcode.app *.xcodeproj'
alias bows='open /Applications/Xcode-beta.app *.xcworkspace'
alias bopr='open /Applications/Xcode-beta.app *.xcodeproj'

export CLICOLOR=1
