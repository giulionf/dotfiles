export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

# Powerlevel 10k custom theme
ZSH_THEME="powerlevel10k/powerlevel10k"
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


plugins=(git, zsh-autosuggestions)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ALIASES
alias gco="git checkout"
alias gs="git status"
alias gp="git pull"
alias gf="git fetch -p"
alias cdcore="cd ~/git/autocrane-core/build"
alias cdhome="cd ~"
alias cddesktop="cd ~/Desktop

# Import some other scripts"
source ~/.ffmpeg
