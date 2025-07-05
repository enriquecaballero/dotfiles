# Add custom completions directory to FPATH (contains Deno completions)
# https://docs.deno.com/runtime/reference/cli/completions/
if [[ ":$FPATH:" != *":$HOME/.zsh/completions:"* ]]; then export FPATH="$HOME/.zsh/completions:$FPATH"; fi

# Load Homebrew
if [[ -x "/opt/homebrew/bin/brew" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Load Zsh completion functions
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

# https://github.com/ohmyzsh/ohmyzsh/issues/6835
ZSH_DISABLE_COMPFIX=true

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Dotenv plugin configuration
ZSH_DOTENV_PROMPT=false

# Terminal title configuration
DISABLE_AUTO_TITLE="true"

# Set terminal title to current directory or active command
precmd  () { print -Pn "\033]0; %~\a" }
preexec () { print -Pn "\033]0; $1\a" }

# Zsh autosuggestions configuration
ZSH_AUTOSUGGEST_STRATEGY="match_prev_cmd"

# Source bashrc
[[ -e ~/.bashrc ]] && emulate sh -c 'source ~/.bashrc'

# OMZ plugins
plugins=(gradle dotenv git)

# Load OMZ
if [[ -f "$ZSH/oh-my-zsh.sh" ]]; then
  source $ZSH/oh-my-zsh.sh
fi

# Load Homebrew installed zsh plugins
if [[ -n "$HOMEBREW_PREFIX" ]]; then
  local spaceship="$HOMEBREW_PREFIX/opt/spaceship/spaceship.zsh"
  local zsh_autosuggestions="$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
  local zsh_syntax_highlighting="$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

  [[ -f "$spaceship" ]] && source "$spaceship"
  [[ -f "$zsh_autosuggestions" ]] && source "$zsh_autosuggestions"
  [[ -f "$zsh_syntax_highlighting" ]] && source "$zsh_syntax_highlighting"
fi

# SDKMAN (THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!)
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Binutils path
if [[ -d "/opt/homebrew/opt/binutils/bin" ]]; then
  export PATH="/opt/homebrew/opt/binutils/bin:$PATH"
fi

# bun completions
[ -s "/Users/enrique/.bun/_bun" ] && source "/Users/enrique/.bun/_bun"

# bun
if [[ -d "$HOME/.bun" ]]; then
  export BUN_INSTALL="$HOME/.bun"
  export PATH="$BUN_INSTALL/bin:$PATH"
fi

# fnm
if command -v fnm >/dev/null 2>&1; then
  eval "$(fnm env --use-on-cd)"
fi
