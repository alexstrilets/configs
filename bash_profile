set -o vi
#export PS1="\e[0;34m\e[47m\u@\h \w> \e[m"
#export PS1="\e[1;34m\h \w> \e[m"
export PS1="\e\[\033[1;31m\h \w> \e[m"

 #alias definitions.
if [ -f ~/.aliases ]; then
. ~/.aliases
fi

export PATH=$PATH:$HOME/bin:/usr/local/Qt5.3.2/5.3/clang_64/bin
export CSCOPE_DB=$HOME/src/CARTA/cscope.out
export CARTAROOT=~/src/CARTA
export DYLD_LIBRARY_PATH=$HOME/src/CARTA/build/cpp/core:$HOME/src/CARTA/build/cpp/CartaLib:/usr/local/qwt-6.1.3-svn/lib:/opt/packages/casacore-2.0.1/lib/
export CS=142.244.190.171
export CY1=ubuntu@199.116.235.164
export CY2=ubuntu@199.116.235.163
export CY3=ubuntu@199.116.235.162
#. ~/.boot2docker.env
export RS=astrilet@142.244.190.107:/Users/astrilet/Alex-Shared

