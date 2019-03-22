#!/bin/bash

# Install homebrew & Xcode Command Line Tools
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# Turn off analytics
brew analytics off


# Install brew cask
brew cask
brew tap caskroom/versions


# Install essential CLI Applications
brew install \
wget \
ssh-copy-id 
