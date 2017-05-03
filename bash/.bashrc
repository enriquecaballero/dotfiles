# Loads `nvm`
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Adds `yarn` (global) installed bins to PATH
export PATH="$HOME/.config/yarn/global/node_modules/.bin:$PATH"

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
alias ll="ls -lh"
alias l.="ls -d .*"
alias ports="lsof -Pn -i4 | grep LISTEN"
alias root="sudo -i"
alias size="du -h"
alias delete="rm -vfr"

# Toggles hidden files visibility in macOS Finder (macOS only)
# If `TRUE`, hidden files become visible; if `FALSE` they become invisible
hiddenfiles () {
  defaults write com.apple.finder AppleShowAllFiles $1; killall Finder
}
