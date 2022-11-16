if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

POWERLEVEL_LEGACY_ICON_SPACING="true"

ZLE_RPROMPT_INDENT=0

# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell`" "agnoster" )

CASE_SENSITIVE="false"

HYPHEN_INSENSITIVE="true"

DISABLE_MAGIC_FUNCTIONS="false"

DISABLE_LS_COLORS="false"

DISABLE_AUTO_TITLE="false"

ENABLE_CORRECTION="true"

# COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="false"

HIST_STAMPS="mm/dd/yyyy"

# zstyle ':omz:update' mode reminder
# zstyle ':omz:update' mode disabled
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 13


plugins=(
	adb
	aliases
	alias-finder
	autopep8
	colored-man-pages
	emoji
	emotty
	extract
	genpass
	git
	octozen
	python
	ripgrep
	sudo
	vi-mode
	web-search
	z
	zbell
	zsh-interactive-cd
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
# source $ZSH_CUSTOM/plugins

# ZSH_CUSTOM=~/Documents/zsh/custom/plugins
export PATH="$HOME/.local/bin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='vim'
else
	export EDITOR='nvim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"


alias ..="cd .."
alias ll="lsd"
alias lll="lsd -lah"
alias lsr="lsd -R"
alias srczsh="source ~/.zshrc"
alias zshcfg="nvim ~/.zshrc"
alias p10kcfg="nvim ~/.p10k.zsh"
alias gitdot="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias graph='gitdot log --all --decorate --oneline --graph'
alias gta="git add"
alias gtb="git branch"
alias gtc="git commit -m"
alias gch="git checkout"
alias gtm="git merge"
alias gtr="git remote add origin"
alias gtp="git push"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
