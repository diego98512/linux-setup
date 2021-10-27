if [ -n "$TMUX" ]; then
    # called inside tmux session, do tmux things
    . ~/.profile

fi
# Trigger ~/.bashrc commands
. ~/.bashrc

screenfetch

# Created by `pipx` on 2021-10-23 06:43:53
export PATH="$PATH:/home/diego/.local/bin"
