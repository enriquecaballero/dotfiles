# Adds `yarn` (global) installed bins to $PATH
if [ -d "$HOME/.config/yarn/global/node_modules/.bin" ]; then
  export PATH="$HOME/.config/yarn/global/node_modules/.bin:$PATH"
fi

# Specifies the location of the `go` workspace
# https://github.com/golang/go/wiki/SettingGOPATH
if command -v go >/dev/null 2>&1; then
  export GOPATH="$HOME/go"
  export PATH="$GOPATH/bin:$PATH"
fi

# Checks for `go` in $PATH
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

# Add local bin directory to path
export PATH="/Users/enrique/.local/bin:$PATH"

# Set R_HOME variable pointing to R bin
if command -v R >/dev/null 2>&1; then
  export R_HOME=$(which R)
fi

# Enable BuildKit
# https://docs.docker.com/develop/develop-images/build_enhancements/#to-enable-buildkit-builds
export DOCKER_BUILDKIT=1

# Add MySQL Client to path
if [ -d "/opt/homebrew/opt/mysql-client/bin" ]; then
  export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
fi

# 1Password SSH agent
if [ -S "$HOME/.1password/agent.sock" ]; then
  export SSH_AUTH_SOCK="$HOME/.1password/agent.sock"
fi

# Cargo environment
if [ -f "$HOME/.cargo/env" ]; then
  . "$HOME/.cargo/env"
fi
