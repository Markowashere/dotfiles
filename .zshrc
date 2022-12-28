# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Load Antigen
source "$HOME/antigen.zsh"

# Load Antigen configurations
antigen theme romkatv/powerlevel10k
antigen init ~/.antigenrc
antigen apply



# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH


#change directory without cd
setopt autocd

#Aliases
alias python='python3'
alias pip="python -m pip"
alias please='sudo $(fc -ln -1)'

alias ls='exa --grid --color auto --icons --sort=type'
alias la='exa --long --all --color auto --icons --sort=type'



notify() { wsl-notify-send.exe --category $WSL_DISTRO_NAME "Task completed"; }

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
