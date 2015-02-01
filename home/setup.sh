#!/bin/sh

sudo -v

# homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#brew tap caskroom/fonts

# rbenv
brew install rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.profile
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.profile
brew install ruby-build
brew install rbenv-gemset
brew install rbenv-gem-rehash
source ~/.profile

# nodebrew
curl -L git.io/nodebrew | perl - setup
echo export PATH=\$HOME/.nodebrew/current/bin:\$PATH >> ~/.profile
source ~/.profile
nodebrew install latest
nodebrew install stable
nodebrew use latest

# tools via brew
brew install caskroom/cask/brew-cask
brew install zsh
brew install zsh-completions
brew install wget
brew install tree
brew install go
brew install ack
brew install peco
brew tap motemen/ghq
brew install ghq

# git
## oh-my-zsh https://github.com/robbyrussell/oh-my-zsh/issues/1717#issuecomment-22540099
brew install git --without-completions
brew install git-flow-avh
brew install hub
brew install tig

# tools via npm
npm install -g bower
npm install -g csslint
npm install -g david
npm install -g gulp
npm install -g gulp-straw
npm install -g jshint
npm install -g superstatic
npm install -g trash

# tools via gem
sudo gem install homesick

# homesick
homesick clone konitter/dotfiles
homesick symlink dotfiles

# desktop apps via cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
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
brew cask install slack
brew cask install skype
brew cask install sophos-anti-virus-home-edition
brew cask install sourcetree
brew cask install sublime-text
brew cask install the-unarchiver
brew cask install tinkertool
brew cask install vlc
brew cask install xtrafinder

# Quick Look plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
defaults write com.apple.finder QLEnableTextSelection -bool true && killall Finder

# fonts via caskroom-fonts
#brew cask install font-fontawesome
#brew cask install font-lobster
#brew cask install font-noto-sans-japanese

# cleanup
brew cleanup
