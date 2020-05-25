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

## `git` dotfiles

```
# .gitconfig
echo "[include]" >> ~/.gitconfig
echo "  path = ~/k/workspace/fridge-dev/my-config/.gitconfig_common" >> ~/.gitconfig
echo "[includeIf \"gitdir:~/k/workspace/fridge-dev/\"]" >> ~/.gitconfig
echo "  path = ~/k/workspace/fridge-dev/my-config/.gitconfig_percy" >> ~/.gitconfig

# .gitignore
ln -s ~/k/workspace/fridge-dev/my-config/.gitignore_global ~/.gitignore_global
```

## `zsh` dotfiles

```
echo "# Percy" >> ~/.zshrc
echo "source $HOME/k/workspace/fridge-dev/my-config/.zshrc" >> ~/.zshrc
echo "" >> ~/.zshrc

echo "# Percy" >> ~/.zshenv
echo "source $HOME/k/workspace/fridge-dev/my-config/.zshenv" >> ~/.zshenv
echo "" >> ~/.zshenv
```
