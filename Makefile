.DEFAULT_GOAL := term

.PHONY: term clone auto

term:
	@(cd .setup/bash && make) || echo Building .bashrc failed.
	@(cd .setup/git && make) || echo Building .gitconfig failed.
	@(cd .setup/ssh && make) || echo Building ssh keys failed.
	@(cd .setup/tmux && make) || echo Building .tmux.conf failed.
	@(cd .setup/vim && make) || echo Building .vimrc failed.
	@(cd .setup/xterm && make) || echo Building .Xresources failed.

clone:
	@bash .setup/scripts/clone.sh

auto: clone
	@git add --all
	@git commit -m "Automated build."
	@git push origin main
