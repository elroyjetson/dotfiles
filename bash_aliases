alias splitpodcast='mp3splt -t 5.0 -a -p gap=40,th=-30'
alias ff='~/Applications/Firefox.app/Contents/MacOS/firefox-bin -p'

alias a='sudo /usr/sbin/apachectl restart';
alias uhf='sudo killall -HUP mDNSResponder'

# git aliases
alias gs='git status'
alias gc='git commit'
alias ga='git add'
alias gfc='git diff-tree --no-commit-id --name-only -r'
alias gfh='git log --follow -p -- '

# https://coderwall.com/p/euwpig
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

alias gb='git branch'
alias co='git checkout'

alias s="subl -n "
alias m='open -a "Marked 2.app" '

# shell
alias ls="ls --color=auto"
alias ll="ls -l --color=auto"
alias la="ls -la --color=auto"
alias ..="cd .."
alias ...="cd ../.."

# Shortcuts
alias src="cd /Volumes/src"
alias cole="cd /Volumes/src/cole"

alias imgdim="sips -g pixelWidth -g pixelHeight"

# cordova
alias cb="cordova build"
alias cr="cordova run android"

# Capture android screen capture - with one device connected
alias asp='/Users/jking/bin/capture_android_screenshot.sh'

# get screen shot of a web site
alias wsp="webkit2png --ignore-ssl-check"

# download highest quality MP4 and M4A audio
alias yt='youtube-dl -f '\''bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4'\'''
