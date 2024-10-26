export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/bin:$PATH"

if [[ "$OSTYPE" == "darwin"* ]]; then
  # Running on MacOS
  source ~/.macos
fi

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
    zsh-syntax-highlighting
)

# Some collection dotfiles
source ~/.functions
source ~/.aliases
source ~/.env
source ~/.custom

source $ZSH/oh-my-zsh.sh
