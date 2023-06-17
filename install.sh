#!/bin/bash

set -e

if command -v bash &> /dev/null
then
  echo Building .bashrc...
  (cd .setup/bash && make) || echo Building .bashrc failed.
fi

if command -v git &> /dev/null
then
  echo Building .gitconfig...
  (cd .setup/git && make) || echo Building .gitconfig failed.
fi

if command -v ssh &> /dev/null
then
  echo Building ssh keys...
  (cd .setup/ssh && make) || echo Building ssh keys failed.
fi

if command -v tmux &> /dev/null
then
  echo Building .tmux.conf...
  (cd .setup/tmux && make) || echo Building .tmux.conf failed.
fi

if command -v vim &> /dev/null
then
  echo Building .vimrc...
  (cd .setup/vim && make) || echo Building .vimrc failed.
fi

if command -v xterm &> /dev/null
then
  echo Building .Xresources...
  (cd .setup/xterm && make) || echo Building .Xresources failed.
fi
