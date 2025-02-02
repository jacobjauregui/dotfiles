# Author: Jacob Jauregui.
# Date: Wednesday, january 15, 2025.
# Version: 1.0
# Language: bash.
# License: MIT License.
# Github: https:github.com/jacobjauregui
# Description: This file is part of my dotfiles. It contains my custom 
# configuration for ZSH shell.

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$ZSH/custom"

# _______________________ [ ZSH CONFIGURATIONS ] ______________________________
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
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="false"
HIST_STAMPS="mm/dd/yyyy"
#zstyle ':omz:update' mode reminder
#zstyle ':omz:update' mode disabled
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 13

# _________________________ [ PLUGINS ] _______________________________________
plugins=(
    alias-finder
    aliases
    autopep8
    colored-man-pages
    emotty
    genpass
    git
    python
#   ripgrep
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
source $ZSH_CUSTOM/plugins

# _________________________ [ FUNCTIONS ] _____________________________________
# Shortcuts for pacman.
pakman () {
	option=$1
	packages=('')
	args=($@)
	for (( i=0; $i <= ${#args[*]}; i++ )); do
		if [ $i -gt 1 ]; then
			packages+=(${args[i]})
		fi
	done

	if [ "$option" != '' ]; then
		if [ "$packages" != '' ]; then
			case $option in
				-s || --search)
					echo "\nLooking for $2...\n"
					pacman -Ss $2
					;;
				-i || --install)
					for pack in $packages; do
						echo "\nInstalling $pack...\n"
						sudo pacman -S $pack
					done
					;;
				-r || --remove)
					for pack in $packages; do
						echo "\nRemoving $pack...\n"
						sudo pacman -Rsun $pack
					done
					;;
				-d || --downloaded)
					for pack in $packages; do
						echo "\nVerifying if $pack is already installed...\n"
						pacman -Qs $pack
					done
					;;
				-l || --local)
					for pack in $packages; do
						echo "\nVerifying if $pack is locally installed...\n"
						pacman -Qe $pack
					done
					;;
				*)
					echo "Error: Unknown option \"$option\""
					;;
			esac
		else
			case $option in
				-u || --upgrade)
					echo "\nUpgrading Pacman...\n"
					sudo pacman -Syu
					;;
				-d || --downloaded)
					echo "\nAlready installed packages...\n"
					pacman -Qs
					;;
				-l || --local)
					echo "\nLocally installed packages:\n"
					pacman -Qe
					;;
				*)
					echo "Error: Unknown option \"$option\""
					;;
			esac
		fi
	else
		echo "Error: No option specified!"
	fi
}

# Remove files securely
xred () {
	sync
	if [[ -d $1 && ! -w $1 ]]; then
		find $1 -type f | xargs sudo scrub -Sfp usarmy > /dev/null 2>&1
		find $1 -type f | xargs sudo shred -fn 32 -zux > /dev/null 2>&1
		sudo rm -drf $1
		echo "Protected folder $1 has been removed!"
	elif [[ ! -w $1 ]]; then
		sudo scrub -fp usarmy $1 > /dev/null 2>&1
		sudo shred -fn 32 -zux $1 > /dev/null 2>&1
		echo "Protected file $1 has been removed!"
	elif [[ -d $1 ]]; then
		find $1 -type f | xargs scrub -Sfp usarmy > /dev/null 2>&1
		find $1 -type f | xargs shred -fn 32 -zux > /dev/null 2>&1
		rm -drf $1
		echo "Folder $1 removed!"
	else
		scrub -fp usarmy $1 > /dev/null 2>&1
		shred -fn 32 -zux $1 > /dev/null 2>&1
		echo "File $1 removed!"
	fi
}

# Open Neovim and edit or create a new file.
nv () {
	if [[ -w $1 ]]; then
		nvim $1
	elif [[ -a $1 ]]; then
		sudo nvim $1
	else
		nvim $1
	fi
}

# Display images on terminal.
img () {
	args=($@)
	if [[ $TERMINAL == "wezterm" ]]; then
		case $1 in
			-h || --help)
				echo "Usage: img [options] <image>"
				echo "Options:"
				echo "  -w, --width <value>  Set the width of the image."
				echo "  -h, --height <value> Set the height of the image."
				echo "  -p, --position <x,y>    Set the image position on x columns and y lines."
				echo "  -s, --size <w,h>   Set the size of the image."
				echo "Examples:\n$ img ~/Pictures/image.jpeg\n$ img -w 50 -h 20 ~/Pictures/image.png\n$ img -w '256px' -h '28px' ~/Pictures/image.jpg\n$ img -w '25%' -h '5%' ~/Pictures/image.jpg"
				;;
			-W || --width)
				wezterm imgcat --width $2 $3
				;;
			-H || --height)
				wezterm imgcat --height $2 $3
				;;
			-P || --position)
				wezterm imgcat --position $2,$3 $4
				;;
			-S || --size)
				wezterm imgcat --width $2 --height $3 $4
				;;
			*)
				wezterm imgcat $1
				;;
		esac
	elif [ $TERMINAL == "kitty" ]; then
		kitty +kitten icat $1
	else
		echo "Terminal \"$TERMINAL\" is no compatible to display images!"
	fi
}

# Remove history files before exiting.
die () {
	echo "Clipboard is empty!" | xclip -i -selection clipboard;
	echo "Clipboard is empty!" | xclip -i -selection primary;
	if [[ -f "$HOME/.zsh_history" || -f "$HOME/.bash_history" ]]; then
		if [[ -f "$HOME/.zsh_history" && -f "$HOME/.bash_history" ]]; then
			xred "$HOME/.zsh_history";
			xred "$HOME/.bash_history";
			exit 0
		elif [[ -f "$HOME/.zsh_history" && ! -f "$HOME/.bash_history" ]]; then
			xred "$HOME/.zsh_history";
			exit 0
		elif [[ -f "$HOME/.bash_history" && ! -f "$HOME/.zsh_history" ]]; then
			xred "$HOME/.bash_history";
			exit 0
		fi
	else
		echo "No history files found!"
		exit 0
	fi
}

greeter () {
	x=136
	width=256
	height=27
	if [[ $(( x % 2 )) -gt 0 ]]; then
		(( x-=1 ))
	fi
	printf "\n"
	center=$(( (width / 2) - (x / 2) ))
	for (( left=0; left < center; left++ )); do
		printf "   "
	done
	img -S $width'px' $height'px' $1
}

# _________________________ [ ALIASSES ] ______________________________________
# --- Common commands.
alias ..="cd .."
alias addr="ip addr"
alias cconf="cd ~/.config"
alias cdesk="cd ~/Desktop"
alias cdoc="cd ~/Documents"
alias cdot="cd ~/.dotfiles"
alias cdown="cd ~/Downloads"
alias cmus="cd ~/Music"
alias cpic="cd ~/Pictures"
alias cvid="cd ~/Videos"
alias cwork="cd ~/Documents/Workspaces"
alias l="lsd"
alias la="lsd -lah"
alias ll="lsd -lh"
alias llr="lsd -R"
alias rmdr="rm -drf"

# --- Edit configuration files.
alias cfgzs="nvim ~/.zshrc"
alias cfgpl="nvim ~/.p10k.zsh"
alias cfgwz="nvim ~/.config/wezterm/wezterm.lua"
alias cfgaw="nvim ~/.config/awesome/rc.lua"
alias keymap="nvim ~/.config/awesome/configuration/keys.lua"

# --- Refresh.
alias src="source ~/.zshrc"
alias upfont="fc-cache -fv"
alias upgrub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias updb="sudo updatedb"
alias vboxsetup="sudo rcvboxadd setup"

# --- Git (bare repo dotfiles).
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

# --- Git (common repo).
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

# --- Github (Using github CLI).
alias gh-login="gh auth login"

# --- System services.
alias daemon-reload="sudo systemctl daemon-reload"
alias sys-enable="sudo systemctl enable"
alias sys-status="systemctl status"
alias sys-start="sudo systemctl start"
alias sys-stop="sudo systemctl stop"
alias sys-restart="sudo systemctl restart"
alias sur="suralert.sh"

# --- User services.
alias ustart="systemctl --user start"
alias urestart="systemctl --user restart"
alias ustop="systemctl --user stop"
alias udemon="systemctl --user enable"


greeter "$HOME/Pictures/hf.png"
