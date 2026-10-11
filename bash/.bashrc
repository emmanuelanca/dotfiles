for file in ~/.config/bash/*; do
	[ -f "$file" ] && source "$file"
done

# opencode
export PATH=/home/eanca/.opencode/bin:$PATH
