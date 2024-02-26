# ----------------- FUNCTIONS ----------------- #

# Docker containers with port info
#running() {
#
#   PORTS=$(docker ps --format=json | jq -r .Ports | awk '{print $1, $3}' | column -t)
#   DATA=$(docker ps | awk '{if (NR!=1) {print $2, $NF}}' | column -t)
#	
#	 echo "${PORTS}" > ports.txt
#  echo "${DATA}" > data.txt
#				
#  paste data.txt ports.txt\
#	 | sed '1 s/^/NAME ID PORTS\n/'\
#	 | awk '{if (NR == 1) {print} else if (NR > 1) {print | "sort"}}'\
#	 | awk '{if (NR==5 && NF==4) {$3=$4} print $1, $2, $3}'\
#	 | column -t
#	
#   rm data.txt
#   rm ports.txt
#}

running() {
	docker ps | awk '{print $2, $NF}' | column -t
}

# Sort the output of `df` and print it in a human-readable format
dfs() {

	df -h | grep -v '/dev/loop' | grep -v '/var/lib' | awk '{
   if (NR==1) {
      i=1;
      while (i < NF) {
        printf "%s", $i "     ";
        i++;
        if (i == NF) {
          printf "%s", "\n"
        }
      }
    } else if (NR > 1) {
      print | "sort"
    }
  }' | column -t
}

# ----------------- ALIASES ----------------- #

# Listing aliases
alias ll='ls -alF'
alias lh='ls -alh'
alias la='ls -al'
alias l='ls -CF'

# Re-aliasing a bunch of Python2 stuff
alias pip='pip3'
alias python='python3'

# Programs
alias c='clear'
alias cls='clear'
alias vi='vim'
alias neofetch='neofetch --ascii_distro raspbian --memory_unit GiB' 
alias df='dfs'
alias docker-compose='docker compose'

# Git aliases
alias init='git init'
alias checkout='git checkout origin master'
alias pull='git pull'
alias push='git push'

# Add an "alert" alias for long running commands.  Use like so:
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
