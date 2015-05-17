parse_git_branch() { git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/(\1)/"; }
export PS1="\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[00m\]\$(parse_git_branch)\$ "

export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH

PATH="/Applications/Postgres93.app/Contents/MacOS/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
alias ll='ls -al'
alias ls='ls -GFh'

export LC_ALL='en_US.UTF-8'  
export LANG='en_US.UTF-8'
export EDITOR='vim'

source ~/bin/git-completion.bash
source ~/bin/tmuxinator.bash
