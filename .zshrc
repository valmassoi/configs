# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh
export GPG_TTY=`tty`
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="/usr/local/opt/mozjpeg/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git)
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

# For a full list of active aliases, run `alias`.
# CD and Open
alias atom.='atom .'
alias finder='open .'
alias cdd='cd ~/Desktop'
alias repos='cd ~/Desktop/Projects/Repos'
alias zshconfig="atom ~/.zshrc"
alias g='/usr/bin/open -a "/Applications/Google Chrome.app"'

# Git
alias gh='/usr/bin/open -a "/Applications/Google Chrome.app" http://github.com/valmassoi/${PWD##*/}'
alias gp='git pull --prune'
alias gcm='git checkout master'
alias gcd='git checkout develop'
alias gs='git status'

# Crypto
alias btc='date && curl https://www.bitstamp.net/api/v2/ticker/btcusd/ | pretty | cowsay'
alias btc-watch='watch -n 10 curl https://www.bitstamp.net/api/v2/ticker/btcusd/'
alias rvn="~/Desktop/Ravencoin/binaries/release/mac/raven-cli"
alias rvn-w="~/Desktop/Ravencoin/binaries/release/mac/raven-cli getwalletinfo"
alias rvn-m="~/Desktop/Ravencoin/binaries/release/mac/raven-cli getmininginfo"

# Utilities
alias me='archey'
alias speed='speedtest-cli'
alias viz='webpack --profile --json > stats.json && webpack-bundle-analyzer stats.json'
alias pretty='python -m json.tool'

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)😎 "
  fi
}
