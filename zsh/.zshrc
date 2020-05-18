export LANG=en_US.UTF-8
# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# PATH
export PATH=$PATH:"/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin"
# export PATH=$PATH:/usr/local/share/npm/bin

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Aliases
alias brewup='brew update; brew upgrade; brew cleanup; brew cleanup; brew doctor'

# Prompt
PROMPT='%{%F{red}%}%~ %{%F{yellow}%}% → %{%F{reset_color}%}%'