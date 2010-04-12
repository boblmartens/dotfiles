# set homebrew if it is there along with user's bin
HOMEBREW=/usr/local

if [ -d $HOMEBREW ]; then
  export PATH=$HOMEBREW/bin:$PATH
fi

[ -d ~/bin ] && export PATH=~/bin:$PATH

# enable color support for ls and other aliases
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# show my git branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# color prompt
#export PS1="\[\033[0;31m\]\u@\h\[\033[33m\] \W \[\033[32m\]\$(parse_git_branch) \[\033[00m\]$\[\033[00m\] " # includes username
export PS1="\[\033[0;31m\]\h\[\033[33m\] \W \[\033[32m\]\$(parse_git_branch) \[\033[00m\]$\[\033[00m\] " # don't show username

if [[ -s /Users/bob/.rvm/scripts/rvm ]] ; then source /Users/bob/.rvm/scripts/rvm ; fi