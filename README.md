# Enrique Caballero's dotfiles

For ease of use, these config files are managed using [Stow](http://www.gnu.org/software/stow/).

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

## [Atom](atom)

* Download [Atom](https://atom.io)
* If on macOS, ensure the Atom CLI is installed `Atom > Install Shell Commands`
* Create symlink `stow atom`
* Install [package-sync](https://atom.io/packages/package-sync) using either the GUI or CLI `apm install package-sync`
* Install packages using package-sync `Packages > Package Sync > Sync Packages`
* Wait until all packages are installed and restart Atom

## [Git](git)

* Create symlink `stow git`
* List of all available variables is [here](http://git-scm.com/docs/git-config#_variables)

## [Bash](bash)

* Create symlink `stow bash`

## [ZSH and Oh My Zsh](zsh)

* Install [ZSH](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
* Install [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
* Create symlink `stow zsh`
* Install the Oh My Zsh plugins ([submodules](.gitmodules) to this repository) `git submodule update --recursive --init`

Ensure `zsh` is in located in `/usr/local/bin/zsh` by running `which zsh`. Create symlinks from current location if not; this is necessary for Hyper to locate your `zsh` installation on both Linux _and_ macOS (see [.hyper.js:78](hyper/.hyper.js#L78)).

## [iTerm](iterm/.iterm/com.googlecode.iterm2.plist)

* Install [iTerm2](http://www.iterm2.com)
* Create symlink `stow iterm`
* In `iTerm > Preferences > General` check the box that says `Load preferences from a custom folder or URL`
* Add in `<path/to/home>/.iterm`


## [Hyper](hyper)

* Install [Hyper](https://hyper.is)
* Create symlink `stow hyper`
* Install plugins `cd ~/.hyper_plugins && npm install`
