if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='vim'
fi

#||||||||||||||||||||||||| ENVIRONMENT VARIABLES ||||||||||||||||||||||||||||||

export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$ZSH/custom"
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export PATH="$HOME/.local/bin:$PATH"
#export ARCHFLAGS="-arch x86_64"
export PATH="$HOME/.dotnet/tools:$PATH"

# |||||||||||||||||||||||||||| CONFIGURATION ||||||||||||||||||||||||||||||||||

ZSH_THEME="powerlevel10k/powerlevel10k"

#ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell`" "agnoster" )

POWERLEVEL_LEGACY_ICON_SPACING="true"

ZLE_RPROMPT_INDENT=0

CASE_SENSITIVE="true"

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
#    adb
    alias-finder
    aliases
    autopep8
    colored-man-pages
#    emoji
    emotty
    genpass
    git
    python
#    ripgrep
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
#source /usr/share/zsh/plugins/zsh-extract/extract.plugin.zsh
source $ZSH_CUSTOM/plugins

rmk () {
	scrub -p dob $1
	shred -zun 10 -v $1
}

# ||||||||||||||||||||||||||| ALIASSES ||||||||||||||||||||||||||||||||||||||||

# Basics (cd, cp, ls, mv, rm, )
alias ..="cd .."
alias cwork="cd ~/Documents/Workspaces"
alias cdown="cd ~/Downloads"
alias cdoc="cd ~/Documents"
alias cdesk="cd ~/Desktop"
alias cpic="cd ~/Pictures"
alias cvid="cd ~/Videos"
alias cmus="cd ~/Music"
alias cscr="cd ~/Scripts"
alias ll="lsd -lh"
alias la="lsd -lah"
alias llr="lsd -R"
alias rmdr="rm -drf"
alias icat="kitty +kitten icat"

# EDIT CONFIGURATION FILES
alias srczsh="source ~/.zshrc"
alias cfgzsh="vim ~/.zshrc"
alias cfgp10k="vim ~/.p10k.zsh"

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
alias gitch="git checkout"
alias gitst="git status"
alias gitsw="git switch"
alias gitf="git fetch"
alias gitcl="git clone"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
