# Dotfiles

Contains all my configuration files.

## Installation

Make symbolic link to all dotfiles.
To install .vim plugins, goto Dotfiles directories and exec :
	
	git submodule init
	git submodule update

## Customization

.gitconfig :
Create ~/.gitconfig_perso
```
[user]
	email = mail@domain.com
	name = My Name
```

# Misc
Install oh-my-zsh :
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
