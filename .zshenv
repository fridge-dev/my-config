# Based on http://zsh.sourceforge.net/Intro/intro_3.html, this runs before
# .zshrc and should NOT set aliases nor assume we're an interactive shell.
# It should set things needed by other programs like PATH and env vars.

export PATH=$PATH:$HOME/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:/usr/local/go/bin

export GOPATH="$HOME/go"

