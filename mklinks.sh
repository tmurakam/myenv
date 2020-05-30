#!/bin/sh
for f in dot.*; do
    df=`echo $f | sed 's/^dot//'`
    ln -s ~/simple-dotfiles/$f ~/$df
done
