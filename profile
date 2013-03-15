# set homebrew if it is there along with user's bin
HOMEBREW=/usr/local

if [ -d $HOMEBREW ]; then
	export PATH=$HOMEBREW/bin:$PATH
fi

[ -d ~/bin ] && export PATH=~/bin:$PATH

# load Postgres.app binaries
PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

# enable color support for ls and other aliases
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# show my git branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# automatically use bundler-exec
[ -f ~/.bundler-exec.sh ] && source ~/.bundler-exec.sh

# Quick way to rebuild the Launch Services database and get rid
# of duplicates in the Open With submenu.
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'

# color prompt
#export PS1="\[\033[0;31m\]\u@\h\[\033[33m\] \W \[\033[32m\]\$(parse_git_branch) \[\033[00m\]$\[\033[00m\] " # includes username
export PS1="\[\033[0;31m\]\h\[\033[33m\] \W \[\033[32m\]\$(parse_git_branch) \[\033[00m\]$\[\033[00m\] " # don't show username

# textmate stuff
export EDITOR="/usr/local/bin/mate -w"

# rbenv inclusion stuff
eval "$(rbenv init -)"
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
