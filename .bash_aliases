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
alias df='df -h | grep -v '/dev/loop' | grep -v '/var/lib'

# Git aliases
alias gi='git init'
alias gcm='git checkout origin master'
alias gpull='git pull'
alias gpush='git push'

# Add an "alert" alias for long running commands.  Use like so:
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
