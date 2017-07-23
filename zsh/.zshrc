export PATH=$PATH:"/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/brajeshwar/tools"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=$PATH:/usr/local/share/npm/bin

# NVM, Node
export NVM_DIR="$HOME/.nvm"
  . "$(brew --prefix nvm)/nvm.sh"

# Prompt

PROMPT='%{%F{red}%}%~ %{%F{yellow}%}% → %{%F{reset_color}%}%'
