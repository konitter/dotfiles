# Dotfiles

## Usage

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
