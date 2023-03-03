#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -la'

## installation
bin=$HOME/bin
# cd $bin
# curl -O https://raw.githubusercontent.com/rupa/z/master/z.sh
# curl -O https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
# curl -O https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

## z
source $bin/z.sh
z --clean > /dev/null 2>&1 
## Git
source $bin/git-completion.bash
source $bin/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
## FZF
if command -v fzf-share >/dev/null; then
  source "$(fzf-share)/key-bindings.bash"
  source "$(fzf-share)/completion.bash"
fi

## Vim directories
mkdir ~/.cache/vim ~/.cache/vim/backup ~/.cache/vim/swap ~/.cache/vim/undo 2>/dev/null

source ~/bin/my-commands.sh
source ~/bin/nc-commands.sh

