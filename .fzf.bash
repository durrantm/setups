# Setup fzf
# ---------
if [[ ! "$PATH" == */home/durrantm/.fzf/bin* ]]; then
  export PATH="$PATH:/home/durrantm/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/durrantm/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/durrantm/.fzf/shell/key-bindings.bash"

