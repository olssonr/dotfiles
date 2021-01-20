# Source this file in your ~/.zhsrc and you will get all dotfiles

# Source aliases
. ~/dotfiles/.zsh_aliases

# Variables
export CLICOLOR=1
export EDITOR=vim
# Quit less if text fits in one screen, very useful for git commands
export LESS="-F$LESS"

# Needed for Kisi rails
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
# Disable spring bootloader, ruby was hogging CPU for kisi-api rails app
export DISABLE_SPRING=true

# debug listen gem
LISTEN_GEM_DEBUGGING=debug

# Git completion
#. ~/dotfiles/git-completion.zsh

# Solarized dir color for ls, needs GNU dircolor, does not work on mac??
# eval `dircolors $HOME/dircolors-solarized/dircorols.ansi-light

# Load rbenv
eval "$(rbenv init -)"
