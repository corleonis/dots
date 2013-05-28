
ZSH=$HOME/.oh-my-zsh

# Stop autocorrecting these!
alias heroku=’nocorrect heroku’
alias vagrant=’nocorrect vagrant’
alias hexo=’nocorrect hexo’

# Import bash aliases
source $HOME/.bash_aliases

ZSH_THEME="sunrise"
COMPLETION_WAITING_DOTS="true"

plugins=(git git-extras github tmux sprunge textmate)
source $ZSH/oh-my-zsh.sh


export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin
