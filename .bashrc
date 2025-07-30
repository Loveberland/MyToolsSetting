# === Hacker Theme Start ===
# Set terminal text to green
export PS1="\[\033[1;32m\]\u@\h:\w\$ \[\033[0m\]"

# Show ASCII art when opening terminal
echo -e "\033[1;32m"
cat << "EOF"
                          L O V E B E R L A N D

EOF
echo -e "\033[0m"

# Show welcome message
echo -e "\033[1;32mWelcome, Master. System is ready.\033[0m"

# Set aliases like a hacker
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Hacker-style fortune (if installed)
if command -v fortune >/dev/null && command -v cowsay >/dev/null; then
    fortune | cowsay | lolcat
fi
# === Hacker Theme End ===

