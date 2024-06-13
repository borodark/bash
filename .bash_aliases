function gitconfigrm()
{
    git config user.email igorostaptchenko@rocketmortgage.com
    git config user.name "Igor Ostaptchenko"
}
function gitconfigio()
{
    git config user.email igor@octanix.com
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
alias gf='git fetch'

alias find='find .'
alias la='ls -la'
alias lA='ls -lA'
alias psj='ps -ef | grep java'
alias myips='ifconfig | grep inet'

alias add-req='echo $1 >> req.txt'

alias ducks="du -cks * | sort -rn | head | awk '{printf \"%.2f M ---> %s\n\",\$1/1024, \$2}'"

alias cda='cd ~/projects/aeon/'
alias cdt='cd ~/projects/aeon/tools/local-dev-docker-compose'


alias mdgc='mix do deps.get, deps.compile'
alias mcc='mix do clean, compile'
alias mt='mix test'
alias mti='MIX_ENV=io mix test'
alias mtint='MIX_ENV=int_test mix test'
alias mf='mix format'

export U_ID=$UID

alias dcu='U_ID=$UID docker-compose up --remove-orphans'
alias dcd='U_ID=$UID docker-compose down --remove-orphans'
alias dps="docker ps --format '{{.Names}} <---> {{.Command}}'"
alias dpsa='dps -a'

function de() { docker exec -it "$@" bash ;}
alias db='docker build'
alias da='docker attach'
alias dcud='docker-compose up -d'

alias grex='grep -r --include "*.ex"'
alias grexs='grep -r --include "*.exs"'
alias greyml='grep -r --include "*.yml"'
alias greyaml='grep -r --include "*.yaml"'
export ERL_AFLAGS="-kernel shell_history enabled -kernel shell_history_file_bytes 1024000"