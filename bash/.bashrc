# Show current git branch in prompt.
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
YELLOW="\[\033[0;33m\]"
LIGHT_GREEN="\[\033[1;32m\]"
BLUE="\[\033[1;34m\]"
LIGHT_GRAY="\[\033[0;37m\]"
PS1="$LIGHT_GREEN\u@\h $BLUE\w$YELLOW\$(parse_git_branch) $BLUE\$ $LIGHT_GRAY"


alias c='cd ..;ls'
alias cc='cd ../..;ls'
alias ccc='cd ../../..;ls'

alias l='ls'
alias ll='ls -l'
alias la='ls -la'

alias v='gvim'
alias va='gvim --servername SERVERA --remote'
alias vb='gvim --servername SERVERB --remote'
alias vc='gvim --servername SERVERC --remote'
alias vd='gvim --servername SERVERD --remote'
alias vi='vim'

#Python configuration
alias p2='python2'
alias p3='python3'
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/developpment
export VIRTUALENVWRAPPER_PYTHON='/usr/bin/python3'
export VIRTUALENVWRAPPER_VIRTUALENV='/usr/local/bin/virtualenv'
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
source /usr/local/bin/virtualenvwrapper.sh

alias x='nemo'
alias pdf.open='evince'

# Git related aliases
alias gs='git status'
alias ga='git add'
alias glog='git log'

# Hard drive mounting
alias mount.dd500="sudo mkdir /media/cdtx/dd500;sudo mount /dev/sdb1"
alias umount.dd500="sudo umount /dev/sdb1;sudo rmdir /media/cdtx/dd500"
# Freebox drive mounting
alias mount.freebox="sudo mkdir /media/cdtx/freebox;sudo mount -t cifs //mafreebox.freebox.fr/Disque\ dur /media/cdtx/freebox -o password=,uid=1000,gid=1000,rw"
alias umount.freebox="sudo umount /media/cdtx/freebox;sudo rmdir /media/cdtx/freebox"

# PATH and others
export PYTHONPATH=/home/cdtx/developpment/python:$PYTHONPATH

alias note='python -m cdtx.mino.note'
export MINO_DATABASE_PATH=/home/cdtx
