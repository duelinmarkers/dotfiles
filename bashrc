export JAVA_HOME=/Library/Java/Home
export PATH=/usr/local/bin:$JAVA_HOME/bin:/usr/local/mysql/bin:$HOME/bin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagacad
export EDITOR='vim'
export GREP_OPTIONS='--color=auto'
export CLASSPATH=$CLASSPATH:/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar
export FIG_REMOTE_URL=ftp://devnas/builds/Fig/repos

alias rc='rake_commit'
alias ll='ls -la'
alias ss='./script/server'
alias sc='./script/console'
alias lein-repl='rlwrap lein repl'
alias coffee-repl='rlwrap coffee -i'
alias mysql='/usr/local/mysql/bin/mysql'
alias mysqladmin='/usr/local/mysql/bin/mysqladmin'
alias prrp='git pull --rebase && rake && git push'

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1='\[\033[01;34m\]\h:\[\033[01;36m\]\w\[\033[00m\]\[\033[01;32m\]$(parse_git_branch)\[\033[00m\]\$ '

if [ -f ~/.ec2rc ]; then
  source ~/.ec2rc
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

[[ -s "/Users/hume/.rvm/scripts/rvm" ]] && source "/Users/hume/.rvm/scripts/rvm"  # This loads RVM into a shell session.

[[ -r $rvm_path/scripts/completion ]] && source $rvm_path/scripts/completion

