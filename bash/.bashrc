# Loads `nvm`
# LOADED VIA OH MY ZSH PLUGIN `nvm`
#
# nvm.sh location depends on installation method
# if [ -s "/usr/local/opt/nvm/nvm.sh" ]; then # Homebrew installer location
#   NVM_SH="/usr/local/opt/nvm/nvm.sh"
# elif [ -s " ~/.nvm/nvm.sh" ]; then # Direct installer location
#   NVM_SH="~/.nvm/nvm.sh"
# fi
#
# if [ ! -z "$NVM_SH" ]; then
#   export NVM_DIR="$HOME/.nvm"
#   nvm_cmds=(nvm node npm)
#   for cmd in $nvm_cmds ; do
#     alias $cmd="unalias $nvm_cmds && unset nvm_cmds && . $NVM_SH && $cmd"
#   done
# fi

# Loads secret environment variables
#
[[ -e ~/.secrets ]] && emulate sh -c 'source ~/.secrets'

# Loads pyenv
#
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Adds `yarn` (global) installed bins to $PATH
#
export PATH="$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Specifies the location of the `go` workspace
# Reference: https://github.com/golang/go/wiki/SettingGOPATH
#
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# Checks for `go` in $PATH
# If inexistent, `go` is assumed to be installed under the `/usr/local` hierarchy
#
if ! [ which go > /dev/null 2>&1 ]; then
  export PATH="$PATH:/usr/local/go/bin"
fi

# Aliases can be placed here
# For a full list of active aliases, run `alias`
#
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
#
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"

# Opens connection to auth agent if disabled
# LOADED VIA OH MY ZSH PLUGIN `ssh-agent`
#
# [ -z "$SSH_AUTH_SOCK" ] && eval "$(ssh-agent -s)"

# Enables GPG's gpg-agent if it is not running
# LOADED VIA OH MY ZSH PLUGIN `gpg-agent`
# 
# export GPG_TTY=$(tty)

# Initializes rbenv
#
eval "$(rbenv init -)"

# Helper for switch Java versions
#
function jenv() {
  export JAVA_HOME=$(/usr/libexec/java_home -v $1)
  java -version
}
