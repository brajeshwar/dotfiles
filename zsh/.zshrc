# PATH
export PATH=$PATH:"/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=$PATH:/usr/local/share/npm/bin

# NVM, Node
export NVM_DIR="$HOME/.nvm"
  . "$(brew --prefix nvm)/nvm.sh"

# Aliases
alias brewup='brew update; brew upgrade; brew cleanup; brew cleanup; brew doctor'

# Prompt
PROMPT='%{%F{red}%}%~ %{%F{yellow}%}% → %{%F{reset_color}%}%'

# Local auto-reload server with BrowserSync
# https://medium.com/@svinkle/start-a-local-live-reload-web-server-with-one-command-72f99bc6e855
export LOCAL_IP=`ipconfig getifaddr en0`
alias server="browser-sync start -s -f . --no-notify --host $LOCAL_IP --port 9000"