#######################################
# zsh config file
#######################################

# Lang
export LANG=ja_JP.UTF-8

# Path of oh-my-zsh
export ZSH=$HOME/.oh-my-zsh

# Theme in ~/.oh-my-zsh/themes/
ZSH_THEME="wedisagree-custom"

# Custom folder
ZSH_CUSTOM=$HOME/.zsh/custom

# Zsh plugins in ~/.oh-my-zsh/plugins/*
plugins=(git brew npm node bower themes)
source $ZSH/oh-my-zsh.sh

# history
HISTSIZE=1000000
SAVEHIST=1000000
setopt hist_ignore_all_dups
setopt hist_save_nodups
setopt hist_reduce_blanks
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_find_no_dups

# insert-last-word
autoload -Uz smart-insert-last-word
zstyle :insert-last-word match '*([[:alpha:]/\\]?|?[[:alpha:]/\\])*'
zle -N insert-last-word smart-insert-last-word
bindkey '^]' insert-last-word

REPORTTIME=1

# -------------------------------------
# path
# -------------------------------------

export PATH=/bin:$PATH
export PATH=/sbin:$PATH
export PATH=/usr/bin:$PATH
export PATH=/usr/sbin:$PATH
export PATH=/usr/local/bin:$PATH

export PATH=$HOME/.rbenv/shims:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH

# -------------------------------------
# alias
# -------------------------------------

# editor
alias s='sublime'
alias vz='vi ~/.zshrc; source ~/.zshrc'
alias sz='s ~/.zshrc; source ~/.zshrc'

# tig
alias t='tig'
alias ta='tig --all'

# hub
# https://github.com/github/hub
# http://qiita.com/yaotti/items/a4a7f3f9a38d7d3415e3
alias git='hub'
alias see='hub browse'

# trash
# https://github.com/sindresorhus/trash
alias t='trash'

# -------------------------------------
# zsh-bd
# https://github.com/Tarrasch/zsh-bd
# -------------------------------------

[ -f ~/.zsh/zsh-bd/bd.zsh ] && source ~/.zsh/zsh-bd/bd.zsh

# -------------------------------------
# incr.zsh
# http://mimosa-pudica.net/zsh-incremental.html
# -------------------------------------

[ -f ~/.zsh/incr*.zsh ] && source ~/.zsh/incr*.zsh

# -------------------------------------
# zsh-syntax-highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting
# -------------------------------------

if [ -f ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
	source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# -------------------------------------
# peco
# https://github.com/peco/peco
# -------------------------------------

# go
# https://github.com/astaxie/build-web-application-with-golang/tree/master/ja
if [ -x "`which go`" ]; then
	export GOPATH=$HOME/.go
	export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
fi

# peco alias
# http://webtech-walker.com/archive/2014/06/peco-ghq-gh-open.html
alias po='s $(git ls-files | peco)'
alias pg='gh-open $(ghq list -p | peco)'

# -------------------------------------
# anyframe
# https://github.com/mollifier/anyframe
# -------------------------------------

fpath=($HOME/.zsh/anyframe(N-/) $fpath)
autoload -Uz anyframe-init
anyframe-init

autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs

bindkey '^ar' anyframe-widget-cdr
bindkey '^a^r' anyframe-widget-cdr
bindkey '^ab' anyframe-widget-checkout-git-branch
bindkey '^a^b' anyframe-widget-checkout-git-branch
bindkey '^ah' anyframe-widget-execute-history
bindkey '^a^h' anyframe-widget-execute-history
bindkey '^ai' anyframe-widget-put-history
bindkey '^a^i' anyframe-widget-put-history
bindkey '^ag' anyframe-widget-cd-ghq-repository
bindkey '^a^g' anyframe-widget-cd-ghq-repository
bindkey '^ak' anyframe-widget-kill
bindkey '^a^k' anyframe-widget-kill
bindkey '^ae' anyframe-widget-insert-git-branch
bindkey '^a^e' anyframe-widget-insert-git-branch
