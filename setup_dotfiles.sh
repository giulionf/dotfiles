# Clone submodules
git submodule update --init

# Install Oh My Zsh
rm -rf ~/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
sleep 1

# Install autosuggestions plugin
rm -rf ${~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install zsh ask
rm -rf ${~/.oh-my-zsh/custom}/plugins/zsh-ask
git clone --depth 1 https://github.com/Licheam/zsh-ask.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-ask

# Install powerlevel 10k Theme
rm -rf ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

# Install zsh syntax highlighting
rm -rf ${~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install zsh syntax highlighting
rm -rf ${~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Copy dotfiles to home dir + activate.
yes | cp -rf .aliases ~/.aliases
yes | cp -rf .env ~/.env
yes | cp -n .custom ~/.custom
yes | cp -rf .macos ~/.macos
yes | cp -rf .functions ~/.functions
yes | cp -rf .gitconfig ~/.gitconfig
yes | cp -rf .p10k.zsh ~/.p10k.zsh
yes | cp -rf .tmux.conf ~/.tmux.conf
yes | cp -rf .zshrc ~/.zshrc
yes | cp -rf submodules/tmux-cssh/tmux-cssh ~/bin/

# Copy executables to home dir + give permission.
mkdir -p ~/bin
yes | cp -rf ./bin/tmux-cssh ~/bin/tmux-cssh && chmod +x ~/bin/tmux-cssh

# Install fzf
rm -rf ~/.fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --no-bash --no-fish --key-bindings --completion --update-rc
eval "$(fzf --zsh)"

source ~/.zshrc;
