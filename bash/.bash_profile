if [[ $- == *i* ]]; then
    if [ -f ~/.bashrc ]; then
        source ~/.bashrc
    fi
fi


export PATH="$HOME/.local/bin/:$PATH"
export GDK_BACKEND=wayland

export EDITOR="emacsclient -nw"

export QT_QPA_PLATFORMTHEME=qt6ct
