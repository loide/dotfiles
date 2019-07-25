# dotfiles
This repository serves as my way to help me setup and maintain my Mac.

Install this dotfiles into a new system (or migrate to this setup):
	- Clone this repository into a bare repository in a "dot" folder:
		git clone --bare git@github.com:loide/dotfiles.git $HOME/.cfg

	- Define the alias in the current shell scope:
		alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

	- Checkout the actual content from the bare repository to your $HOME:
		config checkout
