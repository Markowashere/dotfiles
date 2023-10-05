# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#PATH
export PATH="$PATH:~/bin"

#change directory without cd
setopt autocd

#Antigen
source /opt/homebrew/share/antigen/antigen.zsh

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle agkozak/zsh-z
antigen bundle ogham/exa

antigen theme romkatv/powerlevel10k

antigen apply

#alias
alias ls='exa --grid --color auto --icons --sort=type'
alias ll='exa --long --all --color auto --icons --sort=type'
alias python='python3'
alias pip='pip3'
alias please='sudo $(fc -ln -1)'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
