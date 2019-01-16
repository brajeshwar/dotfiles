source ~/.profile
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$HOME/tools:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # RVM
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # NVM
