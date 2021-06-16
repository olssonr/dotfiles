# dotfiles

My .files for zsh and git

## Setup

* source dotfiles/.zshrc in your ~/.zhsrc and you will get all zsh dotfiles
* source dotfiles/.vimrc in your ~/.vimrc and you will show cursor position and touch type move bindings in vim

## How to configure Rick's Vim bindings in VSCode

To get ”j” to repeat when holding down the key you also need to run this command in the terminal on OS X: `defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false.` See this page for more info: https://stackoverflow.com/questions/39972335/how-do-i-press-and-hold-a-key-and-have-it-repeat-in-vscode/44010683#44010683

Add this to your settings.json in VSCode:

```
    "vim.normalModeKeyBindingsNonRecursive": [
        {
            "before": ["j"],
            "after": ["<LEFT>"]
        },
        {
            "before": ["k"],
            "after": ["<DOWN>"]
        },
        {
            "before": ["l"],
            "after": ["<UP>"]
        },
        {
            "before": [";"],
            "after": ["<RIGHT>"]
        },
        {
            "before": ["<C-w>", "j"],
            "after": ["<C-w>", "<LEFT>"]
        },
        {
            "before": ["<C-w>", "k"],
            "after": ["<C-w>", "<DOWN>"]
        },
        {
            "before": ["<C-w>", "l"],
            "after": ["<C-w>", "<UP>"]
        },
        {
            "before": ["<C-w>", ";"],
            "after": ["<C-w>", "<RIGHT>"]
        }
    ],
    "vim.visualModeKeyBindings": [
        {
            "before": ["j"],
            "after": ["<LEFT>"]
        },
        {
            "before": ["k"],
            "after": ["<DOWN>"]
        },
        {
            "before": ["l"],
            "after": ["<UP>"]
        },
        {
            "before": [";"],
            "after": ["<RIGHT>"]
        }
    ],
```
