default: brew rm_local_dotfiles stow

rm_local_dotfiles:
    source scripts/rm_local_dotfiles.sh

stow:
    stow -t ~/ -d ./src .

brew:
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    grep -q 'eval "$(/opt/homebrew/bin/brew shellenv)"' "$HOME/.profile" || echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$HOME/.profile"
    eval "$(/opt/homebrew/bin/brew shellenv)"
    brew bundle install --file=./src/Brewfile
