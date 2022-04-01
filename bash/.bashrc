#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/generic/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/generic/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/generic/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/generic/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# auto cd when entering file or directory path
shopt -s autocd

# wttr command for weather
source /opt/bin/wttr.bash

# command not found
source /usr/share/doc/pkgfile/command-not-found.bash

# set vim as default editor
export EDITOR='vim'
export VISUAL='vim'

# neofetch on startup
# neofetch

# fancy terminal graphics
eval "$(oh-my-posh --init --shell bash --config '~/.poshthemes/jandedobbeleer.omp.json')"

# thefuck
eval "$(thefuck --alias)"
