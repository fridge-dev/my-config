# -- navigation
alias k='cd ~/k'
alias ws='cd ~/k/workspace'
alias fr='cd ~/k/workspace/fridge-dev'
alias my-config='cd ~/k/workspace/fridge-dev/my-config'
alias blog='cd ~/k/workspace/fridge-dev/blog && subl .'

# -- services
alias psg='ps -ef | grep -v grep | grep ' # grep for a process, and exclude the "grep" process itself from results
alias ps-java='psg java'
alias ports='sudo netstat -plnt'

# -- ls
alias la='ls -lFAG'
alias ll='ls -lFG'

# -- git
alias deliver-results='git push'
git-exclude-local() {
  echo "$1" >> .git/info/exclude
}

# -- disk management
alias dir-sizes='sudo find . -maxdepth 1 -type d -exec du -sh {} +'

# -- grep
alias find-file='find -f . | grep '
alias ss='grep --color -nr --exclude-dir=log --exclude-dir=tmp --exclude-dir=build --exclude-dir=eclipse-bin --exclude-dir=.git --exclude-dir=target --exclude-dir=node_modules'
s() {
  ss "$1" .
}

# -- sublime
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# -- ruby/jekyll
# https://jekyllrb.com/docs/installation/macos/
#source /usr/local/opt/chruby/share/chruby/chruby.sh
#source /usr/local/opt/chruby/share/chruby/auto.sh
#chruby ruby-3.1.1

