#!/bin/bash

# Install homebrew & Xcode Command Line Tools
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# Turn off analytics
brew analytics off


# Install brew cask
xcode-select --install
brew install gcc
brew install cask
