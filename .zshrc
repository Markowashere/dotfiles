emulate zsh -c "$(direnv export zsh)"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

emulate zsh -c "$(direnv hook zsh)"

#change directory without cd
setopt autocd

#zoxide
eval "$(zoxide init zsh)"

#fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#zsh-autosuggestions
[ -f $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

#zsh-syntax-highlighting 
[ -f $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#powerlevel10k
[ -f $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme ] && source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



#aliases
alias ls='exa --grid --color auto --icons --sort=type'
alias ll='exa --long --all --color auto --icons --sort=type'
alias python='python3'
alias pip='pip3'
alias please='sudo $(fc -ln -1)'

#Path
export PATH="$PATH:$HOME/bin"
# Created by `pipx` on 2023-12-05 10:13:57
export PATH="$PATH:/Users/marko.tikkanen/.local/bin"
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/marko.tikkanen/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/marko.tikkanen/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/marko.tikkanen/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/marko.tikkanen/google-cloud-sdk/completion.zsh.inc'; fi

#pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
