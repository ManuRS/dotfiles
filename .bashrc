# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
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
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
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

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# alias
alias fuck='sudo $(history -p \!\!)'
alias q='exit'
alias c='clear'
alias m='make'
alias weather='curl wttr.in'
alias tiempo='curl wttr.in'
alias moon='curl wttr.in/Moon'
alias musica='mocp'
alias cal='gcalcli calw 2 --monday --calendar mnrs94@gmail.com --military -w 10'
alias cal4='gcalcli calw 4 --monday --calendar mnrs94@gmail.com --military -w 10'
alias calm='gcalcli calm --monday --calendar mnrs94@gmail.com --military -w 10'

echo -e "\033[1;37m"

randimgvar="$(($RANDOM%9))"
if (($randimgvar==0)); then
  bash .invaders1.sh
elif (($randimgvar==1)); then
  bash .pacolor.sh
elif (($randimgvar==2)); then
  bash .hipnosapo.sh
elif (($randimgvar==3)); then
  bash .futurama.sh
elif (($randimgvar==4)); then
  bash .sunset.sh
elif (($randimgvar==5)); then
  bash .manu.sh
elif (($randimgvar==6)); then
  figlet "       Manu    @    Aspire"
elif (($randimgvar==7)); then
  figlet "       GNU    -    Linux"
else
  figlet "       Ubuntu"
fi

echo
echo -e "\e[1;37m Bienvenido Manu"
#PS1=' \[\e[1;31m\]\u\[\e[m\]\[\e[1;34m\]@\[\e[m\]\[\e[1;33m\]\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\]\[\e[1;34m\]\$\[\e[m\]\[\e[m\]\[\e[0;32m\] '
PS1='\[\e[1;37m\]\[\e[46m\] \u@\h \[\e[1;37m\]\[\e[41m\] \w \[\e[1;37m\]\[\e[42m\] > \[\e[0;37m\]\[\e[49m\] '
echo

# added by Anaconda3 2.3.0 installer
export PATH="/home/manu/anaconda/bin:$PATH"
# added by Anaconda2 4.2.0 installer
export PATH="/home/manu/anaconda2/bin:$PATH"
