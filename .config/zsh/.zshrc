export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CONFIG_HOME=$HOME/.config
export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export QT_QPA_PLATFORM=wayland
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_DESKTOP=sway

export HISTFILE="$XDG_STATE_HOME"/zsh/history
export ZSH="$XDG_DATA_HOME"/oh-my-zsh
export NVM_DIR="$XDG_DATA_HOME"/nvm
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GOPATH="$XDG_DATA_HOME"/go
export _Z_DATA="$XDG_DATA_HOME/z"
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export NVM_DIR="$XDG_DATA_HOME"/nvm
export NUGET_PACKAGES="$XDG_CACHE_HOME"/NuGetPackages
export MYSQL_HISTFILE="$XDG_DATA_HOME"/mysql_history
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export KDEHOME="$XDG_CONFIG_HOME"/kde
export IPYTHONDIR="${XDG_CONFIG_HOME}/ipython"
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc

export PATH=$PATH:$GOPATH/bin

export FILEMANAGER=thunar
export EDITOR=code
export BROWSER=brave

alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Path to your oh-my-zsh installation.

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# For p10k theme uncomment these lines
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="powerlevel10k/powerlevel10k"

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
zstyle ':omz:update' mode auto      # update automatically without asking
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
COMPLETION_WAITING_DOTS="true"

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
plugins=(
	fzf
	fzf-tab
	git
	fast-syntax-highlighting
	colored-man-pages
	zsh-autosuggestions
  dotbare
	)
. /usr/share/z/z.sh
source $ZSH/oh-my-zsh.sh

# User configuration

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
setopt INC_APPEND_HISTORY
export HISTTIMEFORMAT="[%F %T] "
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS


# Aliases
alias cp='cp -iv --reflink=auto'
alias rcp='rsync -v --progress'
alias rmv='rsync -v --progress --remove-source-files'
alias ln='ln -v'
alias chmod="chmod -c"
alias chown="chown -c"
alias vim="nvim"
alias open="xdg-open"
alias cat="bat"
alias zathura="devour zathura"
alias mpv="devour mpv"
if command -v colordiff > /dev/null 2>&1; then
    alias diff="colordiff -Nuar"
else
    alias diff="diff -Nuar"
fi

alias grep='rg --color=always'
alias egrep='rg --color=always'
alias fgrep='rg --color=alwaysays'

alias ls='exa --color=always --group-directories-first'
alias ll='exa -la --color=always --group-directories-first'

alias xdg-ninja='$HOME/Documents/git-projects/xdg-ninja/xdg-ninja.sh'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# alias history="fc -l -n 1"

if [ -f ~/.alert ]; then echo '>>> Check ~/.alert'; fi

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/shell/shortcutrc" ] && source "$HOME/.config/shell/shortcutrc"

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"
_comp_options+=(globdots)		# Include hidden files.

typeset -g -A key

key[Home]="${terminfo[khome]}"
key[End]="${terminfo[kend]}"
key[Insert]="${terminfo[kich1]}"
key[Backspace]="${terminfo[kbs]}"
key[Delete]="${terminfo[kdch1]}"
key[Up]="${terminfo[kcuu1]}"
key[Down]="${terminfo[kcud1]}"
key[Left]="${terminfo[kcub1]}"
key[Right]="${terminfo[kcuf1]}"
key[PageUp]="${terminfo[kpp]}"
key[PageDown]="${terminfo[knp]}"
key[Shift-Tab]="${terminfo[kcbt]}"
key[Ctrl-Left]=";5D"
key[Ctrl-Right]=";5C"
key[Ctrl-Delete]="5~"
key[Ctrl-Backspace]="^H"

# setup key accordingly
[[ -n "${key[Home]}"      ]] && bindkey -- "${key[Home]}"       beginning-of-line
[[ -n "${key[End]}"       ]] && bindkey -- "${key[End]}"        end-of-line
[[ -n "${key[Insert]}"    ]] && bindkey -- "${key[Insert]}"     overwrite-mode
[[ -n "${key[Backspace]}" ]] && bindkey -- "${key[Backspace]}"  backward-delete-char
[[ -n "${key[Delete]}"    ]] && bindkey -- "${key[Delete]}"     delete-char
[[ -n "${key[Up]}"        ]] && bindkey -- "${key[Up]}"         up-line-or-history
[[ -n "${key[Down]}"      ]] && bindkey -- "${key[Down]}"       down-line-or-history
[[ -n "${key[Left]}"      ]] && bindkey -- "${key[Left]}"       backward-char
[[ -n "${key[Right]}"     ]] && bindkey -- "${key[Right]}"      forward-char
[[ -n "${key[PageUp]}"    ]] && bindkey -- "${key[PageUp]}"     beginning-of-buffer-or-history
[[ -n "${key[PageDown]}"  ]] && bindkey -- "${key[PageDown]}"   end-of-buffer-or-history
[[ -n "${key[Shift-Tab]}" ]] && bindkey -- "${key[Shift-Tab]}"  reverse-menu-complete
[[ -n "${key[Ctrl-Left]}" ]] && bindkey -- "${key[Ctrl-Left]}"  backward-word 
[[ -n "${key[Ctrl-Right]}" ]] && bindkey -- "${key[Ctrl-Right]}"  forward-word
[[ -n "${key[Ctrl-Delete]}" ]] && bindkey -- "${key[Ctrl-Delete]}"  kill-word
[[ -n "${key[Ctrl-Backspace]}" ]] && bindkey -- "${key[Ctrl-Backspace]}"  backward-kill-word

# Finally, make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.
if (( ${+terminfo[smkx]} && ${+terminfo[rmkx]} )); then
	autoload -Uz add-zle-hook-widget
	function zle_application_mode_start { echoti smkx }
	function zle_application_mode_stop { echoti rmkx }
	add-zle-hook-widget -Uz zle-line-init zle_application_mode_start
	add-zle-hook-widget -Uz zle-line-finish zle_application_mode_stop
fi

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search

autoload edit-command-line; zle -N edit-command-line

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
zle_highlight+=(paste:none)

# Keep history of `cd` as in with `pushd` and make `cd -<TAB>` work.
DIRSTACKSIZE=16
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushd_minus

# Ignore lines prefixed with '#'.
setopt interactivecomments

# Ignore duplicate in history.
setopt hist_ignore_dups

# Prevent record in history entry if preceding them with at least one space
setopt hist_ignore_space

# Nobody need flow control anymore. Troublesome feature.
#stty -ixon
setopt noflowcontrol

cd() {
    if (( $+2 )); then
        builtin cd "$@"
        return 0
    fi

    if [ -f "$1" ]; then
        echo "${yellow}cd ${1:h}${NC}" >&2
        builtin cd "${1:h}"
    else
        builtin cd "${@}"
    fi
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(starship init zsh)"

# stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments

export FZF_BASE=/usr/bin/fzf
