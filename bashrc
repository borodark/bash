
alias ll='ls -l'
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
export ERL_AFLAGS="-kernel shell_history enabled"
alias gd='git diff'
alias gs='git status'
alias gp='git push'
alias gpu='git push upstream'
alias gr='git remote -v'
alias gl='git log --branches --remotes --tags --graph --oneline --decorate'
alias find='find .'
export HISTCONTROL=ignoredups:erasedups
export PATH=$PATH:~/bin

function awsup()
{
    eval $(aws-import-credentials.sh)
}


function terragrunty()
{
    echo 'TF_STATE_PREFIX="$(pwd)/" terragrunt '$@' --terragrunt-config $(pwd)/terragrunt.tfvars' ; echo

    TF_STATE_PREFIX="$(pwd)/" \
    terragrunt $@ \
        --terragrunt-config $(pwd)/terragrunt.tfvars
}