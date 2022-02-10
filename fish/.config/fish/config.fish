if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx GPG_TTY (tty)

set -Ux NVM_DIR $HOME/.nvm

# Loads `nvm`
function nvm
  bass source /usr/local/opt/nvm/nvm.sh --no-use ';' nvm $argv
end

# https://github.com/pyenv/pyenv/issues/1737#issuecomment-738080459
# For compilers to find Homebrew bzip2 and zlib installations:
set -gx LDFLAGS "-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
set -gx CPPFLAGS "-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"

# Opens connection to auth agent if disabled
if test -z (pgrep ssh-agent | string collect)
  eval (ssh-agent -c)
  set -Ux SSH_AGENT_PID $SSH_AGENT_PID
  set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
end

# Disable welcome message
function fish_greeting
end

function jenv
  set JAVA_HOME (/usr/libexec/java_home -v $argv[1])
  export JAVA_HOME=$JAVA_HOME
  java -version
end
