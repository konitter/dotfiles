#!/bin/sh

set -e
# Make sure using latest Homebrew
brew update

# Update already-installed formula
brew upgrade

# Add Repository
brew tap phinze/homebrew-cask || true
brew tap homebrew/binary || true

# Packages for development
brew install zsh
brew install zsh-completions
brew install wget
brew install tree
brew install go

# git
## oh-my-zsh https://github.com/robbyrussell/oh-my-zsh/issues/1717#issuecomment-22540099
brew install git --without-completions
brew install git-flow-avh
brew install hub
brew install tig

# Util
brew install ack
brew install peco

# Packages for brew-cask
brew install brew-cask

# brew-cask
brew cask install alfred
brew cask install appcleaner
brew cask install bettertouchtool
brew cask install caffeine
brew cask install cheatsheet
brew cask install clipmenu
brew cask install dash
brew cask install dropbox
brew cask install flip4mac
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install hyperswitch
brew cask install iexplorer
brew cask install imageoptim
brew cask install iterm2
brew cask install keyboardcleantool
brew cask install libreoffice
brew cask install macdown
brew cask install picasa
brew cask install qlmarkdown
brew cask install slack
brew cask install skype
brew cask install sophos-anti-virus-home-edition
brew cask install sublime-text
brew cask install the-unarchiver
brew cask install tinkertool
brew cask install vlc
brew cask install xtrafinder

# thoughtbot/formulae
brew tap thoughtbot/formulae
brew install gitsh

# Remove outdated versions
brew cleanup

# App Store applications
# - appstore Caffeine
# - appstore CLCL Lite
# - appstore Covered
# - appstore Dash
# - appstore formatmatch
# - appstore FreeSpace Tab
# - appstore HiddenMe
# - appstore Keynote
# - appstore LINE
# - appstore Mini Your Photos
# - appstore MPlayerX
# - appstore Xcode
# - appstore YoruFukurou
