# -- navigation
alias k='cd ~/k'
alias ws='cd ~/k/workspace'
alias fr='cd ~/k/workspace/fridge-dev'
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

# -- wallpaper (deprecated)
# Update OSX wallpaper from today's image from http://miniature-calendar.com
update-wallpaper() {
  TIMESTAMP=$(date "$@" +%s)
  REMOTE_FOLDER=$(date -r $TIMESTAMP +%Y/%m)
  FILENAME=$(date -r $TIMESTAMP +%y%m%d%a | awk '{print tolower($0)}').jpg
  LOCAL_FILE=/tmp/$FILENAME
  URL=http://miniature-calendar.com/wp-content/uploads/$REMOTE_FOLDER/$FILENAME

  echo && \
  echo "Downloading $URL" && \
  curl --progress-bar -o $LOCAL_FILE $URL/$REMOTE_FOLDER/$FILENAME > /dev/null && \
  osascript -e "tell application \"Finder\" to set desktop picture to POSIX file \"$LOCAL_FILE\"" && \
  echo && \
  echo "Success." && \
  echo
}

# -- ruby/jekyll
# https://jekyllrb.com/docs/installation/macos/
#source /usr/local/opt/chruby/share/chruby/chruby.sh
#source /usr/local/opt/chruby/share/chruby/auto.sh
#chruby ruby-3.1.1

