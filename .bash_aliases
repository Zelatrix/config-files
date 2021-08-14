alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias c='clear'

# Re-aliasing a bunch of Python2 stuff
alias pip='pip3'
alias python='python3'

# Programs
alias c='clear'
alias cls='clear'
alias df='df -h | grep -v '/dev/loop' | grep -v '/var/lib''
alias vi='vim'

# List running Docker containers
running() {
   echo "Running containers:"; docker ps | awk '{if (NR!=1) print $2, $NF}' | column -t
}

# Git aliases
alias init='git init'
alias checkout='git checkout origin master'
alias pull='git pull'
alias push='git push'

# Add an "alert" alias for long running commands.  Use like so:
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
