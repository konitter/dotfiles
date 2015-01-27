# dotfiles

## 1: Xcode

Install Xcode via App Store.

* Xcode

Make sure to launch Xcode and agree the license.

## 2: Setup

Clone this repo, then run the shell script.

	$ sh setup.sh

### Installing ruby

	$ rbenv install -l
	$ rbenv install 2.2.0
	$ rbenv global 2.2.0
	$ ruby -v

### Update dotfiles

	$ homesick pull dotfiles
	$ homesick symlink dotfiles

If get an error of the following:

	Cannot pull with rebase: You have unstaged changes.
	Please commit or stash them.

Deal with something like this.

	$ cd ~/.homesick/repos/dotfiles
	$ git add .
	$ git stash save
	$ homesick pull dotfiles
	$ homesick symlink dotfiles
	$ git stash pop

## 3: App Store

Install apps via App Store.

* Caffeine
* Dash
* formatmatch
* FreeSpace Tab
* HiddenMe
* Keynote
* LINE
* MPlayerX
* Sketch

## 4: Initialize

	$ npm adduser

## ...etc.

Reference websites.

- [homebrew-cask/Casks at master · caskroom/homebrew-cask](https://github.com/caskroom/homebrew-cask/tree/master/Casks)
- [MacBook Airの初期設定(環境構築) | Web Scratch](http://efcl.info/2014/12/29/new-mac/)
- [brew-file: Brewfileを扱うbrewallを改名した](http://rcmdnk.github.io/blog/2014/08/26/computer-mac-homebrew/)
- [homebrew - インフラエンジニアなMacセットアップ - Qiita](http://qiita.com/imura81gt/items/860ac6196e571c17b7e1)
- [homebrew-caskでよくあること - Qiita](http://qiita.com/tienlen/items/1a50c7507c8f6454f6c6)
- [Yosemiteで、Homebrew環境構築手順（brew, brew cask, brew file） - joker8phoenix's diary](http://joker.hatenablog.com/entry/2014/11/09/014607)
