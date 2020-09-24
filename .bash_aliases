function gitconfigio()
{
    git config user.email igor@octanix.com
    git config user.name "Igor Ostaptchenko"
}
function gitconfigql()
{
    git config user.email IgorOstaptchenko@quickenloans.com
    git config user.name "Igor Ostaptchenko"
}
function gitconfigbor()
{
    git config user.email borodark@gmail.com
    git config user.name "Egor O'Sten"
}

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '


alias ll='ls -l'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

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

alias add-req='echo $1 >> req.txt'
#. /usr/local/etc/bash_completion.d/git-completion.bash

alias ducks="du -cks * | sort -rn | head | awk '{printf \"%.2f M ---> %s\n\",\$1/1024, \$2}'"

alias cda='cd ~/projects/aeon/' 
alias dca='docker-compose up'
alias rd='docker exec -it aeon_meta_demo_1 bash'
alias dcd='docker-compose down'
