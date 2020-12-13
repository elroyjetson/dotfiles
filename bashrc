LOCALBIN="$HOME/bin"
#
export PATH=$LOCALBIN:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/share/npm/bin:~/bin/pear/bin:$(brew --prefix coreutils)/libexec/gnubin:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:$PATH

export EDITOR=vim
unset HISTSIZE
unset HISTFILESIZE
export HISTCONTROL=ignoredups
export HISTIGNORE="pwd:ls:ls -l:ls -la"
shopt -s histappend
PROMPT_COMMAND='history -a'

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
