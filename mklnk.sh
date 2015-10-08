#!/bin/bash

cd ~

if [ -f .bash_profile -a ! -L .bash_profile ]; then
  mv .bash_profile .bash_profile.save
  ln -s ./configs/bash_profile .bash_profile
fi

if [ -f .bashrc -a ! -L .bashrc ]; then
  mv .bashrc .bashrc.save
  ln -s ./configs/bashrc .bashrc
fi

if [ -f .vimrc -a ! -L .vimrc ]; then
  mv .vimrc .vimrc.save
  ln -s ./configs/vimrc .vimrc
fi

if [ -d .vim -a ! -L .vim ]; then
  mv .vim .vim.save
  ln -s ./configs/vim ./.vim
fi

if [ -d .tmux -a ! -L .tmux ]; then
  mv .tmux .tmux.save
  ln -s ./configs/tmux ./.tmux
fi

if [ -d .tmux.conf -a ! -L .tmux.conf ]; then
  mv .tmux.conf .tmux.conf.save
  ln -s ./configs/tmux.conf .tmux.conf
fi

if [ -f .aliases -a ! -L .aliases ]; then
  mv .aliases .aliases.save
  ln -s ./configs/aliases .aliases
fi

