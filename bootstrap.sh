# MACOS Specific installation
if [[ "$OSTYPE" == "darwin"* ]]; then
  echo "It's a Mac 👀💰! Install brew and setup defaults? (y/n)."
  read -r answer
  if [[ "$answer" =~ ^[Yy]$ ]]; then
      echo "Aight. Full macos setup it is.."
      sh setup_macos.sh
      chsh -s $(which zsh) 
  else
      echo "Aight. Shell only it is."
  fi
else
  echo "Its not a Mac. Skipping macos steps."
fi

# Dotfile setup
echo "Setup dotfines in $HOME? (y/n)."
read -r answer
if [[ "$answer" =~ ^[Yy]$ ]]; then
    echo "Aight. Setting up dotfiles.."
    zsh setup_dotfiles.sh
else
    echo "Aight. No dotfiles then."
fi
