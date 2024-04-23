emulate zsh -c "$(direnv export zsh)"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

emulate zsh -c "$(direnv hook zsh)"

#ZSH settings
setopt HIST_IGNORE_DUPS     # Do not store duplicate entries.
setopt AUTO_PUSHD           # Push the current directory visited on the stack.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.
setopt autocd               # Change directory without cd

#zoxide
eval "$(zoxide init zsh)"

#fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#fuzzy finder defaults
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

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
alias vim="nvim"
alias cat="bat"

# d to list previous directories, 1-9 to jump to them
alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index

alias tg="terragrunt"
alias tgaa='(z $(pwd) devmarko && terragrunt apply --auto-approve)'


# Place to store custom executables
export PATH="$PATH:$HOME/bin"

# Place to store custom scripts
for script in ~/scripts/*; do
  if [ -f "$script" ]; then
    source "$script"
  fi
done

# Automatically generated stuff goes below this line
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Created by `pipx` on 2023-12-05 10:13:57
export PATH="$PATH:$HOME/.local/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/google-cloud-sdk/path.zsh.inc' ]; then . '$HOME/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '$HOME/google-cloud-sdk/completion.zsh.inc' ]; then . '$HOME/google-cloud-sdk/completion.zsh.inc'; fi

#pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

#snowsql
alias snowsql=/Applications/SnowSQL.app/Contents/MacOS/snowsql
