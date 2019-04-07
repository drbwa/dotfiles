SB_GREEN="\[\033[1;32m\]"
SB_BLUE="\[\033[1;34m\]"
SB_RED="\[\033[1;31m\]"
SB_YELLOW="\[\033[1;33m\]"
SB_NOCOLOR="\[\033[0m\]"
export PS1="$SB_GREEN\u@$SB_BLUE\h:$SB_YELLOW\W$ $SB_NOCOLOR "

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# set up JAVA_HOMEs and JDK aliases
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_9_HOME=$(/usr/libexec/java_home -v9)
export JAVA_10_HOME=$(/usr/libexec/java_home -v10)
export JAVA_11_HOME=$(/usr/libexec/java_home -v11)
export JAVA_12_HOME=$(/usr/libexec/java_home -v12)

alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java9='export JAVA_HOME=$JAVA_9_HOME'
alias java10='export JAVA_HOME=$JAVA_10_HOME'
alias java11='export JAVA_HOME=$JAVA_11_HOME'
alias java12='export JAVA_HOME=$JAVA_12_HOME'

# default to Java 12
java12
