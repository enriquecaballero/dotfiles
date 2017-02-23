# NVM stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Go stuff
if ! [ which go > /dev/null 2>&1 ]; then
  export PATH="$PATH:/usr/local/go/bin"
fi

export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

# Aliases
alias ll="ls -l"
