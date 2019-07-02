# do pip install json.tools first
alias fjson='python -mjson.tool'

export HISTCONTROL=ignoredups:erasedups
export ERL_AFLAGS="-kernel shell_history enabled"

export PATH=$PATH:~/bin
if [ -d "$HOME/adb-fastboot/platform-tools" ] ; then
    export PATH="$HOME/adb-fastboot/platform-tools:$PATH"
fi

. /usr/local/etc/bash_completion.d/git-completion.bash

export HCAT_HOME=/usr/local/opt/hive/libexec/hcatalog

export HADOOP_HOME=/usr/local/Cellar/hadoop/3.1.2

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_211.jdk/Contents/Home

export HIVE_HOME=/usr/local/Cellar/hive/3.1.1

export PATH=$HIVE_HOME/bin:$PATH

export SPARK_HOME=/opt/spark

export PATH=$JAVA_HOME/bin:$SPARK_HOME/bin:$PATH

export PATH="/usr/local/opt/node@10/bin:$PATH"

