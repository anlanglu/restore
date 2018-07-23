#!/bin/sh

cd "$(dirname "$0")"

# ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#emacs
brew cask install emacs

#mkdir ~/.ConfigFiles/

cp .emacs ~/
cp -rf .emacs.d ~/
cp .zshrc ~/
cp com.googlecode.iterm2.plist ~/Library/Preferences/
