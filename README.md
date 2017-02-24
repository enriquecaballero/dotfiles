# Enrique Caballero's dotfiles

## [.atom](.atom)

* Download [Atom](https://atom.io)
* Install to `~/.atom`
* Open Atom and install shell commands `Atom > Install Shell Commands` (macOS only)
* Run `$ apm install package-sync` to install package that installs packages off `packages.cson`
* Install packages `Packages > Package Sync > Sync Packages`

## [.gitconfig](.gitconfig)

  * Install to `~/.gitconfig`
  * List of all available variables is [here](http://git-scm.com/docs/git-config#_variables).

## [.bash_profile](.bash_profile)

  * Install to `~/.bash_profile`

## [.bashrc](.bashrc)

  * Install to `~/.bashrc`

## [.bash_history](.bash_history)

  * Install to `~/.bash_history`

## [.zshrc](.zshrc) and [.oh-my-zsh/custom](.oh-my-zsh/custom)

  * Install [ZSH](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
  * Install [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh)
  * Install the oh-my-zsh plugins ([submodules](.gitmodules) to this repository) `git submodule update --recursive --init`
  * Install to `~/.zshrc`
  * Install to `~/.oh-my-zsh/custom`

#### Note

Ensure `zsh` is in located in `/usr/local/bin/zsh`. Create symlinks from current location if not; this is necessary for Hyper to locate your `zsh` installation on both Linux and macOS (see [.hyper.js:78](.hyper.js#L78)).

## [.zsh_history](.zsh_history)
  * Install to `~/.zsh_history`

## [.hyper.js](.hyper.js)

* Install [Hyper](https://hyper.is)
* Install to `~/.hyper.js`

## [.hyper_plugins](.hyper_plugins)

  * Install [hpm](https://github.com/zeit/hpm) (optional but recommended)
  * Install to `~/.hyper_plugins`
  * Run `$ cd ~/.hyper_plugins && npm install` to install plugins
