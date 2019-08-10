# dotfiles
This repository serves as my way to help me setup and maintain my Mac.

----
## Initial setup
Install this dotfiles into a new system (or migrate to this setup):

Prior to the installation make sure you have committed the alias to your
.bashrc:

	`alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`

And that your source repository ignores the folder where you'll clone it, so
that you don't create weird recursion problemas:

	`echo "".cfg" >> .gitignore`

- Clone this repository into a bare repository in a "dot" folder:

    `git clone --bare git@github.com:loide/dotfiles.git $HOME/.cfg`

- Define the alias in the current shell scope:

    `alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`

- Checkout the actual content from the bare repository to your $HOME:

    `config checkout`

- The step above might fail with a message like:
>error: The following untracked working tree files would be overwritten by
>checkout:

>  .filenames

> Please move or remove them before you can switch branches.
Aborting

This is because your $HOME folder might already have some stock configuration
files which would be overwritten by Git.

----
## Update files

Update the dot files in your home and then commit:

`config status`

`config  add <filename>`

`config commit -m "Commit message"`

`config push`

Note: you may need to run `config push --set-upstream origin master` to set
remote for the first push
