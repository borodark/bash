
export HISTCONTROL=ignoredups:erasedups
export ERL_AFLAGS="-kernel shell_history enabled"

export PATH=$PATH:~/bin
if [ -d "$HOME/adb-fastboot/platform-tools" ] ; then
    export PATH="$HOME/adb-fastboot/platform-tools:$PATH"
fi

. /usr/local/etc/bash_completion.d/git-completion.bash

#export HCAT_HOME=/usr/local/opt/hive/libexec/hcatalog
#export HADOOP_INSTALL=/usr/local/Cellar/hadoop/3.1.2/libexec
#export HADOOP_CONF_DIR=$HADOOP_INSTALL/etc/hadoop/
#export HADOOP_MAPRED_HOME=$HADOOP_INSTALL
#export HADOOP_COMMON_HOME=$HADOOP_INSTALL
#export HADOOP_HDFS_HOME=$HADOOP_INSTALL
#export YARN_HOME=$HADOOP_INSTALL
#export PATH=$PATH:$HADOOP_INSTALL/bin:$HADOOP_INSTALL/sbin

export HIVE_HOME=/usr/local/Cellar/hive/3.1.1/libexec

export PATH=$HIVE_HOME/bin:$PATH

#export SPARK_HOME=/opt/spark
export SPARK_HOME=~/projects/dataiq/ds/rsp/rsp-venv/lib/python3.6/site-packages/pyspark
# $SPARK_HOME/bin:

export PATH=$JAVA_HOME/bin:/usr/local/Cellar/hadoop/3.1.2/sbin:$PATH

export PATH=$PATH:/usr/local/opt/node\@10/bin


export DERBY_HOME=~/projects/dataiq/ds/rsp/db-derby
export DERBY_INSTALL=~/projects/dataiq/ds/rsp/db-derby
export CLASSPATH=$DERBY_INSTALL/lib/derby.jar:$DERBY_INSTALL/lib/derbytools.jar:$DERBY_INSTALL/lib/derbynet.jar:$DERBY_INSTALL/lib/derbyclient.jar:.
export PATH=$PATH:$DERBY_HOME/bin

