if [[ $- == *i* ]]; then
    if [ -f ~/.bashrc ]; then
        source ~/.bashrc
    fi
fi


export PATH="$HOME/.local/bin/:$PATH"
export GDK_BACKEND=wayland
export XDG_CURRENT_DESKTOP=sway

export EDITOR="emacsclient -nw"

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export QT_QPA_PLATFORMTHEME=lxqt
export SDL_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
