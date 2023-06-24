#!/bin/bash

git clone git@github.com:jeksterslab/dotfiles.git
rm -rf "$PWD.git"
mv dotfiles/.git "$PWD"
rm -rf dotfiles
