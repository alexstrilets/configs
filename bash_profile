set -o vi
export PS1='\w \u\$'

# Alias definitions.                                                                                                    
# You may want to put all your additions into a separate file like                                                      
# ~/.bash_aliases, instead of adding them here directly.                                                                
# See /usr/share/doc/bash-doc/examples in the bash-doc package.                                                         

if [ -f ~/.bash_aliases ]; then                                                                                         
. ~/.aliases                                                                                                   
fi                                                                                                                      

# enable color support of ls and also add handy aliases                                                                 
if [ -x /usr/bin/dircolors ]; then                                                                                      
test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"                               
    alias ls='ls --color=auto -F'                                                                                       
    alias grep='grep --color=auto'                                                                                      
    alias fgrep='fgrep --color=auto'                                                                                    
    alias egrep='egrep --color=auto'                                                                                    
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

