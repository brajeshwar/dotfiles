source $(brew --prefix nvm)/nvm.sh

# Git-Radar, https://github.com/michaeldfallen/git-radar
export PS1="$PS1$(git-radar --bash --fetch)"
