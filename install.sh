#!/usr/bin/env bash

LOCALBIN="$HOME/bin"
DOTFILES="$HOME/Documents/dotfiles"

if [ ! -d $LOCALBIN ]
then
	mkdir $LOCALBIN
fi

# test if z is installed
if [ ! -d "${LOCALBIN}/z" ]
then
	git clone https://github.com/rupa/z.git $LOCALBIN/z
fi

# link files

ln -s $DOTFILES/bash_profile $HOME/.bash_profile
ln -s $DOTFILES/bash_aliases $HOME/.bash_aliases
ln -s $DOTFILES/bash_prompt $HOME/.bash_prompt
ln -s $DOTFILES/vimrc $HOME/.vimrc
ln -s $DOTFILES/gitconfig $HOME/.gitconfig
ln -s $DOTFILES/gitignore_global $HOME/.gitignore_global
ln -s $DOTFILES/tmux.conf $HOME/.tmux.conf