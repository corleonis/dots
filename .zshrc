
ZSH=$HOME/.oh-my-zsh

unsetopt correct

# Import bash aliases
source $HOME/.bash_aliases

ZSH_THEME="sunrise"
COMPLETION_WAITING_DOTS="true"

plugins=(git git-extras github tmux sprunge textmate)
source $ZSH/oh-my-zsh.sh



export PATH=/usr/local/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin:/usr/local/git/bin
