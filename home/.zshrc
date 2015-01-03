#######################################
# zsh config file
#######################################

# Lang
export LANG=ja_JP.UTF-8

# Path of oh-my-zsh
export ZSH=$HOME/.oh-my-zsh

# Theme in ~/.oh-my-zsh/themes/
ZSH_THEME="wedisagree-custom"

# Zsh plugins in ~/.oh-my-zsh/plugins/*
plugins=(git brew npm node bower)
source $ZSH/oh-my-zsh.sh

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

# git
# alias g='git'
# alias gs='git status'
# alias ga='git add .'
# alias gc='git commit -v'
# alias go='git checkout'
# alias gp='git push'
# alias gl="git log --graph --pretty='format:%C(yellow)%h%C(auto)%d%Creset %s %C(black bold)%an, %ar%Creset'"

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
# incr.zsh
# http://mimosa-pudica.net/zsh-incremental.html
# -------------------------------------

[ -f ~/.zsh/incr*.zsh ] && source ~/.zsh/incr*.zsh

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
alias pc='cd $(ghq list -p | peco)'
alias pg='gh-open $(ghq list -p | peco)'

# peco branch
# http://k0kubun.hatenablog.com/entry/2014/07/06/033336
alias -g B='`git branch | peco | sed -e "s/^\*[ ]*//g"`'

# peco history
# http://blog.kenjiskywalker.org/blog/2014/06/12/peco/
# http://qiita.com/uchiko/items/f6b1528d7362c9310da0
function peco-select-history() {
  local tac
  if which tac > /dev/null; then
    tac="tac"
  else
    tac="tail -r"
  fi
  BUFFER=$(\history -n 1 | \
    eval $tac | \
    peco --query "$LBUFFER")
  CURSOR=$#BUFFER
  # zle clear-screen
}
zle -N peco-select-history
bindkey '^h' peco-select-history

# peco cd
# http://www.pupha.net/archives/2267/
if [ -n "`which peco 2> /dev/null`" ]; then

  # unshift the 1st argument string into output
  function peco-unshift() {
    echo "$1"
    while read x; do
      echo $x
    done
  }

  # pd (peco-change-directory)
  # Usage:
  #   - Select ${CD_LINE} to change directory
  #   - Select ${CANCEL_LINE} to cancel
  function pd() {
    local DIR_TMP=""
    local DIR_PATH="$1"
    local CD_LINE="Change-Directory"
    local CANCEL_LINE="Cancel"
    while true
    do
      DIR_TMP=$(\ls -1aF ${DIR_PATH} | sed -e "s/@$/\//" | grep / | peco-unshift ${CANCEL_LINE} | peco-unshift ${CD_LINE} | peco)
      if [ "${DIR_TMP}" = "${CD_LINE}" ]; then
        cd $DIR_PATH
        return
      elif [ "${DIR_TMP}" = "${CANCEL_LINE}" ]; then
        return
      else
        DIR_PATH="${DIR_PATH}${DIR_TMP}"
      fi
    done
  }

fi
