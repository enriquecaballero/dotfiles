# Loads `nvm` and nvm `bash_completion`
export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  #[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Adds `yarn` (global) installed bins to PATH
export PATH="$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Opens connection to auth agent if disabled
[ -z "$SSH_AUTH_SOCK" ] && eval "$(ssh-agent -s)"

# Specifies the location of the `go` workspace
# Reference: https://github.com/golang/go/wiki/SettingGOPATH
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# Checks for `go` in PATH
# If inexistent, `go` is assumed to be installed under the `/usr/local` hierarchy
if ! [ which go > /dev/null 2>&1 ]; then
  export PATH="$PATH:/usr/local/go/bin"
fi

# Aliases can be placed here
# For a full list of active aliases, run `alias`
alias aliases="less ~/.bashrc | grep alias --color=never"
alias ll="ls -lh"
alias la="ls -A"
alias l.="ls -d .*"
alias ports="lsof -Pn -i4 | grep LISTEN"
alias root="sudo -i"
alias size="du -sh"
alias delete="rm -rf"
