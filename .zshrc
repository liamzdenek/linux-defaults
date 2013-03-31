#
# configuration
#
export EDITOR="vim";

#
# helper commands
#
alias ls='ls -G'
alias lt='ls -ltrsa "$@" | tail'
alias psgrep='ps axuf | grep -v grep | grep "$@" -i --color=auto'
alias fname='find . -iname "*$@*"'

#
# PS1 and RPS1
#

if [ `whoami` = "root" ]; then
    PS1="%B%(?..[%?] )%b%F{red}%n%f@%U%m%u> "
else
    PS1="%B%(?..[%?] )%b%F{green}%n%f@%U%m%u> "
fi

precmd()
{
	branch=`git branch 2>/dev/null | grep '^\* ' | sed -e 's/\* //'`
    if [ "$branch" != "" ]; then
	    RPS1="%F{red}$branch %F{green}%~%f"
    else
        RPS1="%F{green}%~%f"
    fi
}

#
# custom flags
#

