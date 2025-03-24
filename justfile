default: brew rm_local_dotfiles stow zinit

rm_local_dotfiles:
    source scripts/rm_local_dotfiles.sh

stow:
    stow -t ~/ -d ./src .

zinit:
    exec zsh
    zinit update --all

brew:
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
    brew bundle install --file=./src/Brewfile
