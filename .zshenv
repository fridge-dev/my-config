# Based on http://zsh.sourceforge.net/Intro/intro_3.html, this runs before
# .zshrc and should NOT set aliases nor assume we're an interactive shell.
# It should set things needed by other programs like PATH and env vars.

export PATH=$PATH:$HOME/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/go/bin
#export PATH=$PATH:/usr/local/go/bin

# brew install protobuf@3
export PATH=$PATH:/opt/homebrew/opt/protobuf@3/bin

# brew install pyenv
# pyenv install 3.12.2
# TODO find better way to not hardcode version
export PATH=$PATH:$HOME/.pyenv/versions/3.12.2/bin

# Golang - Removed old way of exporting GOPATH
#export GOPATH="$HOME/go"
export PATH="$PATH:/opt/homebrew/opt/go@1.21/bin"

# From `brew install nvm`
# Commenting this out since it's taking a lot of startup time
export NVM_DIR="$HOME/.nvm"
#[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
#[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm as well?? (copied from other zshrc)
# Hardcoded node version on PATH (hacky) instead of sourcing nvm, to avoid nvm's slow startup overhead on every shell init.
# Update this path when changing default node version via `nvm install <version>`.
export PATH="$HOME/.nvm/versions/node/v24.14.1/bin:$PATH"

# From rustup?
. "$HOME/.cargo/env"
