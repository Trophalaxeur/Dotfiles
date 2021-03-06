# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
# Test

# Ajout du prompt script :
export GIT_PS1_SHOWUPSTREAM=true
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_pS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=auto

if [ -f /usr/share/git/completion/git-prompt.sh ]; then
  source /usr/share/git/completion/git-prompt.sh
fi

if [ -f /usr/share/git/completion/git-completion.bash ]; then
  source /usr/share/git/completion/git-completion.bash
fi

color_prompt=yes;

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w$(__git_ps1 " (%s)") \[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias ..='cd ..'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias restartapache='sudo /etc/init.d/apache2 restart'
fi

# some more ls aliases
alias ll='ls -CFhvla'
alias la='ls -AFhv'
alias l='ls -CFvhl'

# Raccourcis persos

alias diff='colordiff -urw'

alias cleanfiles='rm -rf *~ .*~';
alias emacs='emacs -nw'
alias editbash='emacs ~/.bashrc;source ~/.bashrc;';

alias torrent_view='tmux attach -t rt'
alias torrent_goto_repo='cd /media/warehouse/torrents/'

## Montage de l'icybox (sdc1)
alias mountIcy='udisksctl mount -b /dev/sdc1'
alias umountIcy='udisksctl unmount -b /dev/sdc1'

#Wine 32
alias wine32='env WINEARCH=win32 WINEPREFIX="$HOME/.wine32" wine'

# Arret du system
alias halt='ncmpcpp stop;mpd --kill;umountIcy;halt -p'

bind '"\eOC":forward-word'
bind '"\eOD":backward-word'
bind '"\e[1~": beginning-of-line'
bind '"\e[4~": end-of-line'
bind '"\e?":backward-kill-word'

#Definition de l'editeur par defaut pour crontab
export EDITOR=/usr/bin/vim
export BROWSER=/usr/bin/firefox
export QT_SELECT=4


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

REP_SCRIPTS_PERSO=~/scripts_perso
if [ -d $REP_SCRIPTS_PERSO ]; then
  for script in `ls $REP_SCRIPTS_PERSO` ; do . $REP_SCRIPTS_PERSO/$script ; done
fi
