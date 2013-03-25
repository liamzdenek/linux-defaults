alias ls="ls -G"
export PATH=/usr/local/mysql/bin/:$PATH
precmd()
{
	branch=`git branch 2>/dev/null | grep '^\* ' | sed -e 's/\* //'`
	PS1="%B%(?..[%?] )%b%F{green}%n%f@%U%m%u> "
	RPS1="%F{red}$branch %F{green}%~%f"
}

