PATHS=(
    ~/.zshrc
    ~/.p10k.zsh
    ~/Brewfile
    ~/.gitconfig
    ~/.gitconfig-work
    ~/.config/nvim
    ~/Library/Application\ Support/Code/User/settings.json
    ~/Library/Application\ Support/Code/User/keybindings.json
)

for path in "${PATHS[@]}"; do
    if [ -e "$path" ]; then
        rm -rf "$path"
        echo "File or directory removed: $path"
    else
        echo "File or directory not found: $path"
    fi
done