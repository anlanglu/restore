#!/bin/sh

cd "$(dirname "$0")"

# ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# emacs
brew cask install emacs

# sshfs
brew cask install osxfuse
brew install sshfs

# ssh key
ssh-keygen -t rsa

# setting up remote directories
mkdir remote_ecad
mkdir remote_seg
mkdir remote_vatican

cat ~/.ssh/id_rsa.pub | ssh anlang_lu@ees.ecs.apple.com 'cat >> .ssh/authorized_keys'
cat ~/.ssh/id_rsa.pub | ssh anlang_lu@scv-anlanglu01.csg.apple.com 'cat >> .ssh/authorized_keys'
cat ~/.ssh/id_rsa.pub | ssh pi@17.190.189.213 'cat >> .ssh/authorized_keys'

# moving files to correct places
cp .emacs ~/
cp -rf .emacs.d ~/
cp .zshrc ~/
cp com.googlecode.iterm2.plist ~/Library/Preferences/
cp config ~/.ssh/
