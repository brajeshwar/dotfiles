source ~/.profile
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$HOME/tools:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # RVM
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # NVM

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# export SDKMAN_DIR="/Users/brajeshwar/.sdkman"
# [[ -s "/Users/brajeshwar/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/brajeshwar/.sdkman/bin/sdkman-init.sh"
