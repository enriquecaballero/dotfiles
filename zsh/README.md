## ZSH and Oh My Zsh

* Install [ZSH](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
* Install [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) and its plugins `git submodule update --recursive --init`
* Create symlink `stow zsh`

Ensure `zsh` is in located in `/usr/local/bin/zsh` by running `which zsh`. Create symlinks from current location if not. This is necessary for Hyper to locate your `zsh` installation on both Linux _and_ macOS (see [.hyper.js:78](../hyper/.hyper.js#L78))

Oh My Zsh and its plugins have been included in this repository as [submodules](../.gitmodules)
