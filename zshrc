# Lines configured by zsh-newuser-install
setopt autocd nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install

# basics
export ZDOTDIR="$HOME"
export EDITOR=neovim
export VISUAL=neovim

# history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt inc_append_history
setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_space

# completion system
fpath=(
	/usr/share/zsh/site-functions
	$fpath
)

autoload -Uz compinit
compinit

# fzf
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# modern replacements
alias grep='rg'
alias find='fd'
alias cat='bat'
alias ls='eza --group-directories-first --icons'
alias ll='eza -l --git --icons'
alias tree='eza --tree'

# prompt
PROMPT='%m %~ %#'
