# ===== Tokyo Night Theme for Bash =====

# --- Tokyo Night Prompt Colors ---
TKN_BG="\[\e[48;5;234m\]"     # Dark navy background (optional)
TKN_FG="\[\e[38;5;189m\]"     # Light foreground text
TKN_BLUE="\[\e[38;5;75m\]"    # Accent blue
TKN_PURPLE="\[\e[38;5;141m\]" # Accent purple
TKN_CYAN="\[\e[38;5;117m\]"   # Accent cyan
TKN_GREEN="\[\e[38;5;114m\]"  # Accent green
TKN_YELLOW="\[\e[38;5;180m\]" # Accent yellow
TKN_RED="\[\e[38;5;204m\]"    # Accent red
RESET="\[\e[0m\]"

# --- Fancy Tokyo Night Prompt ---
# Two-line prompt: username@hostname on first line, path on second
PS1="${TKN_BLUE}\u${RESET}@${TKN_PURPLE}\h ${TKN_YELLOW}\w${RESET}\$ "

# --- Tokyo Night LS_COLORS ---
# di = directory, fi = file, ln = symlink, pi = pipe, so = socket, bd/cd = block/char device
# or = orphan symlink, ex = executable
export LS_COLORS="\
di=38;5;75:\
fi=38;5;189:\
ln=38;5;117:\
pi=38;5;180:\
so=38;5;141:\
bd=38;5;141:\
cd=38;5;141:\
or=38;5;204:\
ex=38;5;114:\
*.md=38;5;180:\
*.sh=38;5;114:\
*.py=38;5;117:\
*.js=38;5;180:\
*.html=38;5;141:\
*.css=38;5;75:\
*.json=38;5;180"

# Always use color output for `ls`
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -a --color=auto'
alias lla='ls -la --color=auto'

. "$HOME/.cargo/env"
