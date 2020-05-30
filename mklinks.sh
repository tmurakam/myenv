#!/bin/sh
for f in dot.*; do
    df=`echo $f | sed 's/^dot//'`
    ln -s ~/dotfiles/$f ~/$df
done
