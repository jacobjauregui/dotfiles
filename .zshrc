if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='vim'
else
	export EDITOR='nvim'
fi

#||||||||||||||||||||||||| ENVIRONMENT VARIABLES ||||||||||||||||||||||||||||||

export ZSH="$HOME/.oh-my-zsh"
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export PATH="$HOME/.local/bin:$PATH"
export ARCHFLAGS="-arch x86_64"

# |||||||||||||||||||||||||||| CONFIGURATION ||||||||||||||||||||||||||||||||||

ZSH_THEME="powerlevel10k/powerlevel10k"

#ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell`" "agnoster" )

POWERLEVEL_LEGACY_ICON_SPACING="true"

ZLE_RPROMPT_INDENT=0

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

# ||||||||||||||||||||||||||||||||| PLUGINS |||||||||||||||||||||||||||||||||||

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
#source $ZSH_CUSTOM/plugins

# ||||||||||||||||||||||||||| ALIASSES ||||||||||||||||||||||||||||||||||||||||

# Basics (cd, cp, ls, mv, rm, )
alias ..="cd .."
alias cwork="cd ~/Documents/Workspaces"
alias cdown="cd ~/Downloads"
alias ll="lsd"
alias lll="lsd -lah"
alias lsr="lsd -R"
alias rmdr="rm -dr"

# ZSH 
alias srzsh="source ~/.zshrc"
alias zshcfg="nvim ~/.zshrc"
alias p10kcfg="nvim ~/.p10k.zsh"
alias zshup="omz update"

# Git dotfiles (bare repo)
alias gitdot="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias dota="gitdot add"
alias dotb="gitdot branch"
alias dotc="gitdot commit -m"
alias dotd="gitdot diff"
alias dotl="gitdot log"
alias dotlo="gitdot log --oneline"
alias dotlogr='gitdot log --all --decorate --oneline --graph'
alias dotm="gitdot merge"
alias dotp="gitdot push"
alias dotpl="gitdot pull"
alias dotr="gitdot remote"
alias dotre="gitdot reset"
alias dots="gitdot checkout"
alias dotst="gitdot status"

# Git
alias gita="git add"
alias gitb="git branch"
alias gitc="git commit -m"
alias gitd="git diff"
alias gitl="git log"
alias gitlo="git log --oneline"
alias gitlogr='git log --all --decorate --oneline --graph'
alias gitm="git merge"
alias gitp="git push"
alias gitpl="git pull"
alias gitr="git remote"
alias gitre="git reset"
alias gits="git checkout"
alias gitst="git status"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
