source $(brew --prefix nvm)/nvm.sh

export NODE_PATH='/usr/local/lib/node_modules'
export PATH="$PATH:$HOME/.rvm/bin" # RVM
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # NVM

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# export SDKMAN_DIR="/Users/brajeshwar/.sdkman"
# [[ -s "/Users/brajeshwar/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/brajeshwar/.sdkman/bin/sdkman-init.sh"
