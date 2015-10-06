#!/bin/bash

cd ~

if [ -f .bash_profile -a ! -L .bash_profile ]; then
  mv .bash_profile .bash_profile.save
fi

if [ -f .bashrc -a ! -L .bashrc ]; then
  mv .bashrc .bashrc.save
fi

if [ -f .vimrc -a ! -L .vimrc ]; then
  mv .vimrc .vimrc.save
fi

if [ -d .vim -a ! -L .vim ]; then
  mv .vim .vim.save
fi

if [ -f .aliases -a ! -L .aliases ]; then
  mv .aliases .aliases.save
fi

ln -s ./configs/bash_profile .bash_profile
ln -s ./configs/bashrc .bashrc
ln -s ./configs/vimrc .vimrc
ln -s ./configs/vim ./.vim
ln -s ./configs/aliases .aliases
