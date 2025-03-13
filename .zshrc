# Source this file in your ~/.zhsrc and you will get all dotfiles

# Source aliases
. ~/dotfiles/.zsh_aliases

## Variables ##

export CLICOLOR=1
export EDITOR=vim

export PYENV_ROOT="$HOME/.pyenv"

## Paths ##

# Add homebrew to path
eval "$(/opt/homebrew/bin/brew shellenv)"

# Add pyenv to path
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"

## Load tools ##

# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

# Load pyenv
eval "$(pyenv init - zsh)"

# Load pipx
eval "$(register-python-argcomplete pipx)"

# Load asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# Add asdf completion
# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)

## Show current branch in prompt ##

# Enabling and setting git info var to be used in prompt config.
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
# This line obtains information from the vcs.
zstyle ':vcs_info:git*' formats "git:(%b) "
precmd() {
    vcs_info
}

# Enable substitution in the prompt.
setopt prompt_subst

# Config for the prompt. PS1 synonym.
prompt='%1/ ${vcs_info_msg_0_}> '

# TODO: Add wezterm config in dotfiles too?

