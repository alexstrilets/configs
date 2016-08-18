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


#export PATH=$PATH:$HOME/bin:/usr/local/Qt5.3.2/5.3/clang_64/bin
#export CARTAROOT=~/src/CARTA
#export DYLD_LIBRARY_PATH=$HOME/src/CARTA/build/cpp/core:$HOME/src/CARTA/build/cpp/CartaLib:/usr/local/qwt-6.1.3-svn/lib:/opt/packages/casacore-2.0.1/lib/
#export MS=astrilet@142.244.191.182:/Users/astrilet/Alex-Shared

export CPATH=/usr/include
export CSCOPE_DB=$HOME/src/CARTA/cscope.out

#VM aliases
export CS=142.244.191.161
export CY1=ubuntu@199.116.235.164
export CY2=centos@199.116.235.163
export CY3=ubuntu@199.116.235.162
export LS1=astrilet@129.128.222.10
#. ~/.boot2docker.env

#mysql
if [ -d "/Applications/MySQLWorkbench.app/Contents/MacOS" ]; then
  export PATH=$PATH:/Applications/MySQLWorkbench.app/Contents/MacOS
fi


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
