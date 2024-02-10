# Define a list of file paths
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

# Define a rule to add .bak postfix to file names
for path in "${PATHS[@]}"; do
    if [ -e "$path" ]; then
        mv "$path" "$path.bak"
        echo "File or directory backed up: $path"
    else
        echo "File or directory not found: $path"
    fi
done