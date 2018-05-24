set -o vi

 #alias definitions.
if [ -f ~/.aliases ]; then
. ~/.aliases
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

#export PATH=$PATH:$HOME/bin:/usr/local/Qt5.3.2/5.3/clang_64/bin
#export CARTAROOT=~/src/CARTA
#export DYLD_LIBRARY_PATH=$HOME/src/CARTA/build/cpp/core:$HOME/src/CARTA/build/cpp/CartaLib:/usr/local/qwt-6.1.3-svn/lib:/opt/packages/casacore-2.0.1/lib/
#export MS=astrilet@142.244.191.182:/Users/astrilet/Alex-Shared

export CPATH=/usr/include
export CSCOPE_DB=$HOME/src/cscope.out

#mysql
if [ -d "/Applications/MySQLWorkbench.app/Contents/MacOS" ]; then
  export PATH=$PATH:/Applications/MySQLWorkbench.app/Contents/MacOS
fi


