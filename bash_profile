LOCALBIN="$HOME/bin"
#export ANDROID_HOME=/Applications/adt-bundle-mac-x86_64-20140702/sdk
export ANDROID_HOME=/usr/local/opt/android-sdk

export PATH=$LOCALBIN:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/share/npm/bin:~/bin/pear/bin:~/bin:$(brew --prefix coreutils)/libexec/gnubin:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:$(brew --prefix homebrew/php/php55)/bin:$PATH

export EDITOR=vim

export HISTCONTROL=ignoredups
export HISTIGNORE="pwd:ls:ls -l:ls -la"

set -o vi

# Grab aliases
if [ -f ~/.bash_aliases ]; then
	source ~/.bash_aliases
fi

if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
	. $(brew --prefix)/share/bash-completion/bash_completion
fi

if [ -f ~/.git-completion.bash ]; then
	source ~/.git-completion.bash
fi

if [ -f /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh ]; then
	source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
fi

if [ -f ~/.bash_prompt ]; then
	source ~/.bash_prompt
fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# enable z https://github.com/rupa/z
. $LOCALBIN/z/z.sh

# up & down map to history search once a command has been started.
# http://akrabat.com/computing/context-specific-history-at-the-bash-prompt/
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
