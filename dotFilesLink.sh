#!/bin/sh

for file in `find ~/dotfiles -name '.*' | awk -F/ '{print $NF}'` ; do
    if [ ${file} = ".git" ] ; then 
        echo "skip .git" 
        continue
    fi

    echo "create symbolic link of" $file
    ln -sf ~/dotfiles/$file ~/$file
done

chmod 705 ~/dotfiles/.*

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
