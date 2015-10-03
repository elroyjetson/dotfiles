#!/usr/bin/env bash

LOCALBIN="$HOME/bin"
DOTFILES="$HOME/.dotfiles"

if [ ! -d $LOCALBIN ]
then
	mkdir $LOCALBIN
fi

# test if z is installed
if [ ! -d "${LOCALBIN}/z" ]
then
	git clone https://github.com/rupa/z.git $LOCALBIN/z
fi

if [ ! -d $DOTFILES ]
then
	mkdir $DOTFILES
fi
