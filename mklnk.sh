#!/bin/bash

cd ~

# link .bash_profile
if [ -f .bash_profile -a ! -L .bash_profile ]; then
  mv .bash_profile .bash_profile.save
fi
if [ ! -f .bash_profile ]; then
  ln -s ./configs/bash_profile .bash_profile
fi

# link .bashrc
if [ -f .bashrc -a ! -L .bashrc ]; then
  mv .bashrc .bashrc.save
fi
if [ ! -f .bashrc ]; then
  ln -s ./configs/bashrc .bashrc
fi

# linke .vimrc
if [ -f .vimrc -a ! -L .vimrc ]; then
  mv .vimrc .vimrc.save
fi
if [ ! -f .vimrc ]; then
  ln -s ./configs/vimrc .vimrc
fi

# link .aliases
if [ -f .aliases -a ! -L .aliases ]; then
  mv .aliases .aliases.save
  ln -s ./configs/aliases .aliases
fi
if [ ! -f .aliases ]; then
  ln -s ./configs/aliases .aliases
fi

# link .tmux.conf
if [ -f .tmux.conf -a ! -L .tmux.conf ]; then
  mv .tmux.conf .tmux.conf.save
fi
if [ ! -f .tmux.conf ]; then
  ln -s ./configs/tmux.conf .tmux.conf
fi

#link .vim directory
if [ -d .vim -a ! -L .vim ]; then
  mv .vim .vim.save
  ln -s ./configs/vim ./.vim
fi
if [ ! -d .vim ]; then
  ln -s ./configs/vim ./.vim
fi

#link .tmux directory
if [ -d .tmux -a ! -L .tmux ]; then
  mv .tmux .tmux.save
  ln -s ./configs/tmux ./.tmux
fi
if [ ! -d .tmux ]; then
  ln -s ./configs/tmux ./.tmux
fi
