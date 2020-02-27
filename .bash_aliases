function gitconfigql()
{
    git config user.email IgorOstaptchenko@quickenloans.com
    git config user.name "Igor Ostaptchenko"
}

function gitconfigbor()
{
    git config user.email borodark@gmail.com
    git config user.name "Igor O'Sten"
}

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '


alias ll='ls -l'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
#alias du='du -xh --max-depth=1 | sort -h'

alias gd='git diff'
alias gs='git status'
alias gp='git push'
alias gpu='git push upstream'
alias gr='git remote -v'
alias gl='git log --branches --remotes --tags --graph --oneline --decorate'
alias gc='git commit -am'

alias find='find .'
alias la='ls -la'
alias lA='ls -lA'
alias psj='ps -ef | grep java'
alias myips='ifconfig | grep inet'

alias dps='docker ps'
alias dpsa='dps -a'

alias aws='aws --no-verify-ssl'

alias wget='wget --no-check-certificate'
alias sursp='sudo su - svc-dl-rsp-demo-np'
alias sunmls='sudo su - svc-dl-nmls-etl-np'
alias add-req='echo $1 >> req.txt'