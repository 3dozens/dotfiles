#!/bin/sh

for file in `find ~/dotfiles -name '.*' | awk -F/ '{print $NF}'` ; do
    if [ ${file} = ".git" ] ; then 
        echo "skip .git" 
        continue
    fi

    echo "create symbolic link of" $file
    ln -sf ~/dotfiles/$file ~/$file
done
