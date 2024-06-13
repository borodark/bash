export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

export HISTCONTROL=ignoredups:erasedups
export ERL_AFLAGS="-kernel shell_history enabled"

export PATH=$PATH:~/bin

function awsup()
{
    eval $(aws-import-credentials.sh)
}

function terragrunty()
{
    echo 'TF_STATE_PREFIX="$(pwd)/" terragrunt '$@' --terragrunt-download-dir /tmp --terragrunt-config $(pwd)/terragrunt.tfvars' ; echo
    TF_STATE_PREFIX="$(pwd)/" \
                   terragrunt $@ \
                   --terragrunt-download-dir /tmp \
                   --terragrunt-config $(pwd)/terragrunt.tfvars
}

if [ -d "$HOME/adb-fastboot/platform-tools" ] ; then
    export PATH="$HOME/adb-fastboot/platform-tools:$PATH"
fi

if [ -f /usr/share/bash-completion/completions/git ]; then
    . /usr/share/bash-completion/completions/git
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.docker_aliases ]; then
    . ~/.docker_aliases
fi
