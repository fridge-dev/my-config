# my-config

This repo contains configuration and dot-files for my personal use. It assumes the following directory structure for separation of personal development (github) and my corporate job.

* `~/k` - my main directory; intentionally namespaced from `~` (and not using OS-specific "Documents" dir) so I know which files are created by me and I can avoid when other software mis-uses/pollutes other directories.
* `~/k/workspace` - where all of my software development happens
* `~/k/workspace/fridge-dev` - contains repos from my personal github account (this one)
* `~/k/workspace/{job}` - contains repos from my corporate job

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
cd ~/k/workspace/fridge-dev/my-config/home-sym-link
ln -s $(pwd)/.* ~/

# confirm
la ~
```

## Set up steps (unordered)

1. OSX settings
1. Terminal color settings
1. Install homebrew
1. Install hammerspoon + shiftit
1. git? (already installed)
1. CLion + IntelliJ + Sublime
1. 
