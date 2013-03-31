alias ls="ls -G"
export PATH=/usr/local/mysql/bin/:$PATH

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
        PS1="%F{green}%~%f"
    fi
}

