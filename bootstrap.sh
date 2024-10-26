# Dotfile setup
echo "Setup dotfiles in $HOME? (y/n)."
read -r answer
if [[ "$answer" =~ ^[Yy]$ ]]; then
    echo "Aight. Setting up dotfiles.."
    zsh setup_dotfiles.sh
else
    echo "Aight. No dotfiles then."
fi

# MACOS Specific installation
if [[ "$OSTYPE" == "darwin"* ]]; then
  echo "It's a Mac 👀💰! Install brew and setup defaults? (y/n)."
  read -r answer
  if [[ "$answer" =~ ^[Yy]$ ]]; then
      echo "Aight. Full macos setup it is.."
      sh setup_macos.sh
      chsh -s $(which zsh) 
  
      # Install yabai + skhd only optionally
      echo "Install yabai + skhd? (y/n)."
      read -r answer
      if [[ "$answer" =~ ^[Yy]$ ]]; then
          echo "Aight. Installing yabai + skhd"
          brew install yabai
          brew install skhd
          yes | cp -rf .aliases ~/.aliases
          yes | cp -rf .env ~/.env
          echo "yabai --start-service" >> ~/.zshrc
	  echo "skhd --start-service" >> ~/.zshrc
      else
          echo "Aight. No yabai + skhd"
      fi
  else
      echo "Aight. Shell only it is."
  fi

else
  echo "Its not a Mac. Skipping macos steps."
fi

