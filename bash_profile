set -o vi
export PS1='\w \u\$'
alias ls='ls -GF'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias docker='/usr/local/bin/docker --tlsverify=false'
export PATH=$PATH:$HOME/bin:/usr/local/Qt5.3.2/5.3/clang_64/bin
export CSCOPE_DB=$HOME/src/CARTA/cscope.out
export CARTAROOT=~/src/CARTA
alias cdw='cd ~/src/CARTA/CARTAvis'
alias cdb='cd ~/src/CARTA/build/cpp/desktop/desktop.app/Contents/MacOS'
alias mcarta='qmake NOSERVER=1 CARTA_BUILD_TYPE=dev ~/src/CARTA/CARTAvis/carta -r'
alias mcartar='qmake NOSERVER=1 CARTA_BUILD_TYPE=release ~/src/CARTA/CARTAvis/carta -r'
alias mcartad='qmake NOSERVER=1 CARTA_BUILD_TYPE=bughunter ~/src/CARTA/CARTAvis/carta -r'
export DYLD_LIBRARY_PATH=$HOME/src/CARTA/build/cpp/core:$HOME/src/CARTA/build/cpp/CartaLib:/usr/local/qwt-6.1.3-svn/lib:/opt/packages/casacore-2.0.1/lib/
alias runv='./desktop --html $CARTAROOT/CARTAvis/carta/VFS/DesktopDevel/desktop/desktopIndex.html --scriptPort 9999 ~/CARTA/Images/555wmos.fits'
export CS=142.244.190.171
export CY1=ubuntu@199.116.235.164
export CY2=ubuntu@199.116.235.163
export CY3=ubuntu@199.116.235.162
#alias dm='valgrind --tool=memcheck --leak-check=yes --show-reachable=yes --num-callers=20 --track-fds=yes --track-origins=yes'
alias dm='valgrind --tool=memcheck --leak-check=full --show-reachable=yes --track-origins=yes'
. ~/.boot2docker.env
