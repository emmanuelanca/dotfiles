if [[ $- == *i* ]]; then
    if [ -f ~/.bashrc ]; then
        source ~/.bashrc
    fi
fi


export PATH="$HOME/.local/bin/:$PATH"
export EDITOR="emacsclient -nw"
