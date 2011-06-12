export PATH=/usr/local/bin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagacad
export EDITOR='vim'
export GREP_OPTIONS='--color=auto'
export CLASSPATH=$CLASSPATH:/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar

alias rc='rake_commit'
alias ll='ls -la'
alias ss='./script/server'
alias sc='./script/console'
alias lein-repl='rlwrap lein repl'
alias coffee-repl='rlwrap coffee -i'
alias mysql='/usr/local/mysql/bin/mysql'
alias mysqladmin='/usr/local/mysql/bin/mysqladmin'

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

[[ -s "/Users/Thoughtworks/.rvm/scripts/rvm" ]] && source "/Users/Thoughtworks/.rvm/scripts/rvm"  # This loads RVM into a shell session.

[[ -r $rvm_path/scripts/completion ]] && source $rvm_path/scripts/completion

