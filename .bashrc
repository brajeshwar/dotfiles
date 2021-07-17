source $(brew --prefix nvm)/nvm.sh

export NODE_PATH='/usr/local/lib/node_modules'
export PATH="$PATH:$HOME/.rvm/bin" # RVM
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # NVM

# Starship Colorize, https://starship.rs
# eval "$(starship init bash)"