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
alias ows='open *.xcworkspace'
