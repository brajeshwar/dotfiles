export LANG=en_US.UTF-8
export SSH_KEY_PATH="~/.ssh/id_rsa"

path=('/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin' $path)
export PATH

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

# Aliases
# References
# - https://thorsten-hans.com/5-types-of-zsh-aliases
alias brewup='brew update; brew upgrade; brew cleanup; brew cleanup; brew doctor'

if [[ $OSTYPE == darwin* ]]; then
alias flush='sudo dscacheutil -flushcache'
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Prompt
PROMPT='%{%F{red}%}%~ %{%F{yellow}%}% › %{%F{reset_color}%}%'

# Starship Colorize, https://starship.rs
# eval "$(starship init zsh)"