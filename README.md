# my-config

This repo contains configuration and dot-files for my personal use. It assumes the following directory structure for separation of personal development (github) and my salary job.

* `~/k` - my main directory; intentionally namespaced from `~` (and not using OS-specific "Documents" dir) so I know which files are created by me and I can avoid when other software mis-uses/pollutes other directories.
* `~/k/workspace` - where all of my software development happens
* `~/k/workspace/fridge-dev` - contains repos from my personal github account (this one)
* `~/k/workspace/{job}` - contains repos from my job

# New computer set up

## Initial repos

```
cd ~
mkdir k && cd $_
mkdir workspace && cd $_
mkdir fridge-dev && cd $_
git clone https://github.com/fridge-dev/my-config
```

## Set up dotfiles

```
cd ~/k/workspace/fridge-dev/my-config
ln -s $(pwd)/home-sym-link/.* ~/

# confirm
la ~
```

## cmux

```
mv ~/.config/cmux/* $(pwd)/cmux/
ln -s $(pwd)/cmux ~/.config/cmux
```

## Set up steps (roughly ordered)

1. OSX settings
1. git? (already installed)
1. This repo
1. cmux
1. Install homebrew
1. Install hammerspoon + shiftit
1. claude
1. Sublime
1. CLion + IntelliJ

## Homebrew

To regenerate the Brewfile from current installations:

```
brew bundle dump --file=~/k/workspace/fridge-dev/my-config/Brewfile --force
```

To install everything on a new laptop:

```
brew bundle install --file=~/k/workspace/fridge-dev/my-config/homebrew/Brewfile
```

## Github

```
gh auth login
# ? Where do you use GitHub? GitHub.com
# ? What is your preferred protocol for Git operations on this host? HTTPS
# ? Authenticate Git with your GitHub credentials? Yes
# ? How would you like to authenticate GitHub CLI? Login with a web browser
```
