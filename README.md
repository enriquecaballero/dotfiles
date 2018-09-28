# Enrique Caballero's dotfiles

For ease of use, these config files are managed using [Stow](http://www.gnu.org/software/stow/)

## Install Stow

* macOS (use [Homebrew](https://brew.sh))
```
brew install stow
```

* GNU/Linux
```
apt-get install stow
```

## Creating symlinks using Stow

* `cd` to the dotfiles directory
* You can make Stow symlink the files to your `$HOME` like so:
`stow <package>` where you replace `<package>` with the name of the subdirectory
* If you want to remove a certain package’s config files, just do this:
`stow --delete <package>`

---

## [Git](git)

* Create symlink `stow git`
* List of all available variables is [here](http://git-scm.com/docs/git-config#_variables)


## [Bash](bash)

* Create symlink `stow bash`


## [ZSH and Oh My Zsh](zsh)

* Install [ZSH](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
* Install [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) and its plugins ([submodules](.gitmodules) to this repository) `git submodule update --recursive --init`
* Create symlink `stow zsh`

Ensure `zsh` is in located in `/usr/local/bin/zsh` by running `which zsh`. Create symlinks from current location if not. This is necessary for Hyper to locate your `zsh` installation on both Linux _and_ macOS (see [.hyper.js:78](hyper/.hyper.js#L78))
