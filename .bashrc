# alias
alias mysql="mysql --pager='less -S'"
alias vagrant-ups="vagrant up && vagrant ssh"
alias railss="rails s -b 0.0.0.0"
alias porg-install="porg -lD make install"

# OSごとに違うlsのカラーオプションに対応
which gls > /dev/null 2>&1
if [ $? -eq 0 ] ; then
    # macの場合の設定。brew install coreutils してdircolors-solarizedを
    # 指定のディレクトリに入れてください
    eval 'gdircolors ~/src/dircolors-solarized/dircolors.ansi-universal'
    alias ls='gls -alF --color=auto'

elif [ "$(uname)" = 'Darwin' ]; then
    export LSCOLORS=xbfxcxdxbxegedabagacad
    alias ls='ls -alGF'
else
    # eval `dircolors ~/.colorrc`
    alias ls='ls -alF --color=auto'
fi

# Ruby周りの設定
export RUBYGEMS_GEMDEPS=-
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
