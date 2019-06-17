function awsup()
{
    eval $(aws-import-credentials.sh)
}


function terragrunty()
{
    echo 'TF_STATE_PREFIX="$(pwd)/" terragrunt '$@' --terragrunt-download-dir /tmp --terragrunt-config $(pwd)/terragrunt.tfvars' ; echo

    TF_STATE_PREFIX="$(pwd)/" \
                   terragrunt $TF_STATE_PREFIX@ --terragrunt-download-dir /tmp \
                   --terragrunt-config $(pwd)/terragrunt.tfvars
}

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
alias la='ls -la'
alias lA='ls -lA'
# do pip install json.tools first
alias fjson='python -mjson.tool'
export HISTCONTROL=ignoredups:erasedups
export PATH=$PATH:~/bin
if [ -d "$HOME/adb-fastboot/platform-tools" ] ; then
 export PATH="$HOME/adb-fastboot/platform-tools:$PATH"
fi
export SPARK_HOME=/opt/spark
export PATH=$SPARK_HOME/bin:$PATH

. /usr/local/etc/bash_completion.d/git-completion.bash

#export PATH="/usr/local/opt/node@10/bin:$PATH"
#export HADOOP_HOME=/usr/local/Cellar/hadoop/3.1.2
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_211.jdk/Contents/Home
export PATH="/usr/local/opt/node@10/bin:$PATH"
export PATH="/usr/local/opt/node@10/bin:$PATH"
