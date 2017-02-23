# NVM stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Adds `yarn` installed bins to $PATH
export PATH="$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Go stuff
if ! [ which go > /dev/null 2>&1 ]; then
  export PATH="$PATH:/usr/local/go/bin"
fi

export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# Aliases can be placed here.
# For a full list of active aliases, run `alias`.
alias ll="ls -l"
