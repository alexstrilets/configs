#!/bin/bash
cd ~
mv .bash_profile .bash_profile.save
mv .bashrc .bashrc.save
mv .vimrc .vimrc.save
mv .vim .vim.save
ln -s ./configs/bash_profile .bash_profile
ln -s ./configs/bashrc .bashrc
ln -s ./configs/vimrc .vimrc
ln -s ./configs/vim ./vim
