alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'
alias gs='git status' # other g aliases from oh-my-zsh git plugin
alias bw="cd $HOME/Projects/bravotran/web"

export LESS=-FRX # F=quit if one screen, R=raw control chars, X=don't init (clear screen on exit)

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function* ... manually copied from .profile

export PATH="$HOME/.cargo/bin:$PATH"
[[ -f /opt/homebrew/bin/brew ]] && eval "$(/opt/homebrew/bin/brew shellenv)"
