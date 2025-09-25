# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.

#Plugins
# source ~/commandes/zsh-autocomplete/zsh-autocomplete.plugin.zsh

export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nvim
export PATH=$PATH:/home/nbardavi/.local/bin
# export PATH=$PATH:/home/nbardavi/bin
# export PATH=$PATH:/home/nbardavi/sgoinfre/homebrew/bin
#eval "$(zoxide init zsh)"
# eval "$(mcfly init zsh)"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# export PATH=$PATH:/home/nbardavi/omp
# eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/themes/aliens.omp.json)"
# ZSH_THEME="pixegami-agnoster"
ZSH_THEME="pure"
fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

# Définir les couleurs
# VIOLET="%F{111}"
# GREEN="%F{202}"
# WHITE="%F{15}"

# Configurer l'invite
# autoload -Uz vcs_info
# precmd () { vcs_info }
# zstyle ':vcs_info:*' formats ' (%b)'
# PS1="${VIOLET}[%T]${WHITE} ${GREEN}%~ ${VIOLET}❯${WHITE} "

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
	)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#customs alias
#
# set -o vi

#alias movements
alias .1="cd .."
alias .2="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."

alias zshconfig="nvim ~/.zshrc"
alias ccc="cc -Wall -Werror -Wextra < *.c"
alias kittyconfig="nvim ~/.config/kitty/kitty.conf"

#nvim alias
alias vim="nvim"
alias dswap="rm ~/.local/state/nvim/swap/*"
alias nvimconfig="nvim ~/.config/nvim/"

#commands alias
alias ls="lsd"
alias cman="tldr"
alias ya="yazi";

alias resetchrome="rm ~/.config/google-chrome/SingletonLock"
alias lumi="xrandr --output HDMI-2 --brightness"

alias rhistory="cp ~/.42sh_history_old ~/.sh_history; cp ~/.42sh_history_old ~/.42sh_history"
alias 42sh_setup="bash ~/bin/setup_42sh.sh; z 42sh"

#Zig alias
alias zrm="rm -rf .zig-cache"
alias zb="zig build"
alias zbr="zig build run"
alias zr="zig run"
alias zbo="zig build -Doptimize=ReleaseFast"
alias zbd="zig build -freference-trace=10"

alias sound="pavucontrol"

#Config files
alias hyprconfig="nvim ~/.config/hypr/hyprland.conf"

export NVM_DIR="$HOME/.nvm"
source /usr/share/nvm/init-nvm.sh


. "$HOME/.local/share/../bin/env"
