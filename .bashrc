# alias
alias mysql="mysql --pager='less -S'"

# OSごとに違うカラーオプションに対応
if [ "$(uname)" = 'Darwin' ]; then
    export LSCOLORS=xbfxcxdxbxegedabagacad
    alias ls='ls -alGF'
else
    eval `dircolors ~/.colorrc`
    alias ls='ls -alF --color=auto'
fi

# Ruby周りの設定
export RUBYGEMS_GEMDEPS=-
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
