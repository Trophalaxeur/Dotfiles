# Dotfiles

Contains all my configuration files.

## Installation

Clone the repo and create symlinks:

```bash
git clone git@github.com:Trophalaxeur/Dotfiles.git ~/Project/Dotfiles
cd ~/Project/Dotfiles
```

### Root dotfiles

```bash
ln -s ~/Project/Dotfiles/.bashrc       ~/.bashrc
ln -s ~/Project/Dotfiles/.gitconfig    ~/.gitconfig
ln -s ~/Project/Dotfiles/.vimrc        ~/.vimrc
ln -s ~/Project/Dotfiles/.vim          ~/.vim
ln -s ~/Project/Dotfiles/.xinitrc      ~/.xinitrc
ln -s ~/Project/Dotfiles/.Xresources   ~/.Xresources
ln -s ~/Project/Dotfiles/.xscreensaver ~/.xscreensaver
ln -s ~/Project/Dotfiles/.zshrc        ~/.zshrc
```

### Scripts

```bash
ln -s ~/Project/Dotfiles/scripts_startup ~/scripts_startup
```

### XDG config (~/.config)

```bash
mkdir -p ~/.config/kitty ~/.config/awesome
ln -s ~/Project/Dotfiles/.config/kitty/kitty.conf     ~/.config/kitty/kitty.conf
ln -s ~/Project/Dotfiles/.config/awesome/rc.lua        ~/.config/awesome/rc.lua
```

### Vim plugins

```bash
git submodule init
git submodule update
```

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
