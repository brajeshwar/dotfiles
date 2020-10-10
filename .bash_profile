eval "$(rbenv init -)"

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
# export PATH="$HOME/tools:$PATH"

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
# [[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # NVM

if command -v pyenv 1>/dev/null 2>&1; then eval "$(pyenv init -)"; fi
export PATH="/usr/local/opt/ruby/bin:$HOME/.gem/ruby/2.7.1/bin:$PATH"
