alias ll='ls -l'
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
. ~/git-completion.bash
export ERL_AFLAGS="-kernel shell_history enabled"
alias gd='git diff'
alias gs='git status'
alias gp='git push'
alias gpu='git push upstream'
alias gr='git remote -v'
alias gl='git log --branches --remotes --tags --graph --oneline --decorate'
export HISTCONTROL=ignoredups:erasedups
