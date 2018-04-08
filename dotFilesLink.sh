#!/bin/bash

not_create=(".git" ".gitignore"  ".mac" ".loader" ".common")
for file in `find ~/dotfiles -name '.*' | awk -F/ '{print $NF}'` ; do
    for a_not_create in ${not_create[@]}; do
      if [ ${file} = ${a_not_create} ]; then
        echo skip ${a_not_create}
        continue 2
      fi
    done

    echo "create symbolic link of" $file
    ln -sf ~/dotfiles/$file ~/$file
done

chmod 705 ~/dotfiles/.*

[ ! -d ~/.oh-my-zsh ] && git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
[ ! -d ~/.oh-my-zsh/custom/plugins/zsh-completions ] && git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
