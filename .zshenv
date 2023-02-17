# Based on http://zsh.sourceforge.net/Intro/intro_3.html, this runs before
# .zshrc and should NOT set aliases nor assume we're an interactive shell.
# It should set things needed by other programs like PATH and env vars.

export PATH=$PATH:$HOME/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:/usr/local/go/bin

# brew install protobuf@3
export PATH=$PATH:/opt/homebrew/opt/protobuf@3/bin

export GOPATH="$HOME/go"

# From `brew install nvm`
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# From rustup?
. "$HOME/.cargo/env"
