if [ -e /site/apps/jdk/current ]; then export JAVA_HOME=/site/apps/jdk/current; fi
if [ -e /Library/Java/Home ]; then export JAVA_HOME=/Library/Java/Home; fi
export PATH=/usr/local/bin:$JAVA_HOME/bin:/usr/local/mysql/bin:$HOME/bin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
export EDITOR=vim
export VISUAL=$EDITOR
export GREP_OPTIONS='--color=auto'
export FIG_REMOTE_URL=ftp://devnas/builds/Fig/repos

if [ -e $HOME/.localenv ]; then source $HOME/.localenv; fi

# enable color support of ls and also add handy aliases
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagacad
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

if [ -f ~/.ec2rc ]; then
  source ~/.ec2rc
fi

if [ -f /usr/local/bin/brew ]; then
  if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
  fi
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

[[ -r $rvm_path/scripts/completion ]] && source $rvm_path/scripts/completion

export GIT_PS1_SHOWDIRTYSTATE=y
PS1='\[\033[01;34m\]\h:\[\033[01;36m\]\w\[\033[00m\]\[\033[01;32m\]$(__git_ps1)\[\033[00m\]\$ '
