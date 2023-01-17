# ██████╗  █████╗ ███████╗██╗  ██╗██████╗  ██████╗
# ██╔══██╗██╔══██╗██╔════╝██║  ██║██╔══██╗██╔════╝
# ██████╔╝███████║███████╗███████║██████╔╝██║
# ██╔══██╗██╔══██║╚════██║██╔══██║██╔══██╗██║
# ██████╔╝██║  ██║███████║██║  ██║██║  ██║╚██████╗
# ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
#
# ██████████╗
# █ author █║ drkhsh <me@drkhsh.at>
# █ repo   █║ https://git.drkhsh.at/dotfiles
# ██████████║
# ╚═════════╝

bind 'set bell-style none'

# █▓▒░ history
HISTSIZE=10000
HISTFILE=~/.bash_history
shopt -s histappend
PROMPT_COMMAND='history -a' # save hist immediately
export HISTCONTROL=ignorespace:ignoredups

# █▓▒░ exists helper
_exists() {
	hash $1 2> /dev/null
}

# █▓▒░ aliases
alias mkdir="mkdir -p"
alias df="df -h"
alias du="du -h"
alias ..='cd ..'
alias ...='cd ../..'
_exists vim && alias vi="vim"
_exists doas && alias sudo="doas"
alias stopwatch="time cat"

# █▓▒░ env vars
export MANWIDTH=80
export LESSHISTFILE=-
_exists vim && export EDITOR="vim"
_exists less && export PAGER="less"
_exists brave-bin && export BROWSER="brave-bin"
_exists brave-browser && export BROWSER="brave-browser"
_exists systemctl && export SYSTEMD_PAGER=

# █▓▒░ deeply nested folders
function up {
	if [[ "$#" < 1 ]] ; then
		cd ..
	else
		CDSTR=""
		for i in {1..$1} ; do
			CDSTR="../$CDSTR"
		done
		cd $CDSTR
	fi
}

# █▓▒░ starship prompt
_exists starship && eval "$(starship init bash)"

