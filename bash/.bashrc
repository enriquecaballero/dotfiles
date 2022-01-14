# Loads `nvm` and nvm `bash_completion`
export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  #[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Loads pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

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

# https://github.com/pyenv/pyenv/issues/1737#issuecomment-738080459
# For compilers to find Homebrew bzip2 and zlib installations:
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"

export GPG_TTY=$(tty)

eval "$(rbenv init -)"

# Switch versions of Java
function jenv() {
  export JAVA_HOME=$(/usr/libexec/java_home -v $1)
  java -version
}
