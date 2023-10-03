# Source this file in your ~/.zhsrc and you will get all dotfiles

# Source aliases
. ~/dotfiles/.zsh_aliases

## Variables ##

export CLICOLOR=1
export EDITOR=vim

## Paths ##

# Add homebrew to path
eval "$(/opt/homebrew/bin/brew shellenv)"

## Load tools ##

# Load asdf
. "$HOME/.asdf/asdf.sh"

# Add asdf completion
# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

# TODO: Add wezterm config in dotfiles too?

