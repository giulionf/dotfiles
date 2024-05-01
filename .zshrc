export ZSH="$HOME/.oh-my-zsh"

# Powerlevel 10k custom theme
ZSH_THEME="powerlevel10k/powerlevel10k"
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Enable installed plugins
plugins=(
    git
    dirhistory
    zsh-autosuggestions
    z
    copybuffer
    copyfile
    history
    zsh-ask
)

# Some collection dotfiles
source ~/.functions
source ~/.aliases
source ~/.env

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  # Running on remote
else
  # Running locally
  ssh-add --apple-use-keychain ~/.ssh/id_ed25519
fi


source $ZSH/oh-my-zsh.sh
