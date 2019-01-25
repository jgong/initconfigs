# load zgen
source "${HOME}/.zgen/zgen.zsh"
# if the init scipt doesn't exist
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/command-not-found
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load chriskempson/base16-shell
    zgen load Vifon/deer

    # completions
    zgen load zsh-users/zsh-completions src

    # save all to init script
    zgen save
fi
# Base16 Shell
BASE16_SHELL="$HOME/.zgen/chriskempson/base16-shell-master/scripts/base16-solarized-dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
# Vifon/deer
autoload -U deer
zle -N deer
bindkey '^J' deer

# Commands
alias vi='vim'

# Add Go bin in PATH
export PATH="$PATH:~/go/bin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:/Users/jinggong/jgong/works/sonar/sonar-scanner-3.2.0.1227-macosx/bin"
export PATH="$PATH:$HOME/.rvm/bin"

# added by travis gem
[ -f /Users/jinggong/.travis/travis.sh ] && source /Users/jinggong/.travis/travis.sh
