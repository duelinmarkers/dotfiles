alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'
alias gs='git status' # other g aliases from oh-my-zsh git plugin
alias bw="cd $HOME/Projects/bravotran/web"

export LESS=-FRX # F=quit if one screen, R=raw control chars, X=don't init (clear screen on exit)

export PATH="$HOME/.cargo/bin:$PATH"
[[ -f /opt/homebrew/bin/brew ]] && eval "$(/opt/homebrew/bin/brew shellenv)"
