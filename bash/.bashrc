# Load modules

for file in ~/.config/bash/*; do
	[ -f "$file" ] && source "$file"
done

# Exports

export PATH=$PATH:~/.local/bin


# Distrobox

if [ -n "$CONTAINER_ID" ] && command -v distrobox-host-exec >/dev/null 2>&1; then
    command_not_found_handle() {
        if [ -n "$DISTROBOX_HOST_EXEC_ACTIVE" ]; then
            printf "bash: %s: command not found\n" "$1" >&2
            return 127
        fi

        export DISTROBOX_HOST_EXEC_ACTIVE=1
        distrobox-host-exec "$@"
        local exit_code=$?
        unset DISTROBOX_HOST_EXEC_ACTIVE
        return $exit_code
    }
fi
