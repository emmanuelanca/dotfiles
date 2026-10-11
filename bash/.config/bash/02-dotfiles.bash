alias dot='git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'
__git_complete dot _git_main

dotc() {
    dot commit --allow-empty-message -m ""
}

dotf() {
    local file
    file=$(dot ls-files | fzf)
    if [ -n "$file" ]; then
	$EDITOR -- "$file" </dev/tty
    fi
}

dots() {
    dot status -uno
}

