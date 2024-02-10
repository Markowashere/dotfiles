default: brew bak stow

bak:
    source scripts/bak.sh

stow:
    stow -t ~/ .

brew:
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/marko.tikkanen/.profile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    brew bundle install --file=./Brewfile