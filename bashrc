set -o vi

 #alias definitions.
if [ -f ~/.aliases ]; then
. ~/.aliases
fi

if [ -f ~/.git-hist.sh ]; then
    source ~/.git-hist.sh
fi

if [ -f ~/.git-prompt.sh ]; then
    source ~/.git-prompt.sh
    #export PS1='\n\[\e[1;37m\]|-- \[\e[1;32m\]\u\[\e[0;39m\]@\[\e[1;36m\]\h\[\e[0;39m\]:\[\e[1;33m\]\w\[\e[0;39m\]\[\e[1;35m\]$(__git_ps1 " (%s)")\[\e[0;39m\] \[\e[1;37m\]--|\[\e[0;39m\]\n>'
    export GIT_PS1_SHOWDIRTYSTATE=1
    export PS1='\[\e[1;32m\]\h\[\e[0;39m\]:\[\e[1;36m\]\w\[\e[0;39m\]\[\e[1;35m\] $(__git_ps1 "[%s]")\[\e[0;39m\]\[\e[0;39m\]$'
else
    #export PS1="\e[0;34m\e[47m\u@\h \w> \e[m"
    export PS1="\e[1;35m\h \w> \e[m"
    #export PS1="\e\[\033[1;31m\h \w> \e[m"
fi


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

#VM aliases
export PATH=$HOME/.composer/vendor/bin:$HOME/Library/Python/2.7/bin:/usr/local/sbin:$HOME/bin:$PATH

#mysql
if [ -d "/Applications/MySQLWorkbench.app/Contents/MacOS" ]; then
  export PATH=$PATH:/Applications/MySQLWorkbench.app/Contents/MacOS
fi

function iterm2_print_user_vars() {
  iterm2_set_user_var gitBranch $((git branch 2> /dev/null) | grep \* | cut -c3-)
}

#Flutter
export PATH=$PATH:$HOME/devel/flutter/bin

#Android Studio
export ANDROID_HOME='/Users/astrilet/Library/Android/sdk'
export JAVA_HOME='/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home'

