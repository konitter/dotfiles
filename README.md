# dotfiles

## Setup dotfiles

Install homesick.

```
$ gem install homesick
```

Clone this repo by homesick.

```
$ homesick clone konitter/dotfiles
git clone  https://github.com/konitter/dotfiles.git to /Users/konitter/.homesick/repos/dotfiles
```

Put a symbolic link.

```
$ cd ~
$ homesick symlink dotfiles
```

## Update dotfiles

```
$ homesick pull dotfiles
$ homesick symlink dotfiles
```

If get an error of the following:

```
Cannot pull with rebase: You have unstaged changes.
Please commit or stash them.
```

Deal with something like this.

```
$ cd ~/.homesick/repos/dotfiles
$ git add .
$ git stash save
$ homesick pull dotfiles
$ homesick symlink dotfiles
$ git stash pop
```

## Homebrew packages

Install [Homebrew](http://brew.sh).

```
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Run sh.

```
$ ./Brewfile.sh
```

Reference websites.

- [homebrew-cask/Casks at master · caskroom/homebrew-cask](https://github.com/caskroom/homebrew-cask/tree/master/Casks)
- [MacBook Airの初期設定(環境構築) | Web Scratch](http://efcl.info/2014/12/29/new-mac/)
- [brew-file: Brewfileを扱うbrewallを改名した](http://rcmdnk.github.io/blog/2014/08/26/computer-mac-homebrew/)
- [homebrew - インフラエンジニアなMacセットアップ - Qiita](http://qiita.com/imura81gt/items/860ac6196e571c17b7e1)
- [homebrew-caskでよくあること - Qiita](http://qiita.com/tienlen/items/1a50c7507c8f6454f6c6)
- [Yosemiteで、Homebrew環境構築手順（brew, brew cask, brew file） - joker8phoenix's diary](http://joker.hatenablog.com/entry/2014/11/09/014607)
