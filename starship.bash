#!/bin/bash
echo "Please enter password"
sudo echo "Thanks!"

#-----------------------------------Install Nerd Font--------------------------------#
cd /usr/share/fonts

sudo mkdir nerd_fonts
cd /usr/share/fonts/nerd_fonts

sudo wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Agave.zip

sudo unzip Agave.zip 
sudo rm Agave.zip
#------------------------------------------------------------------------------------#

#-----------------------------------Install Starship---------------------------------#
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

echo "eval "$(starship init bash)"" >> ~/.bashrc

mkdir -p ~/.config && touch ~/.config/starship.toml

echo '# Inserts a blank line between shell prompts
add_newline = true

# Replace the "❯" symbol in the prompt with "➜"
[character]                            # The name of the module we are configuring is "character"
success_symbol = "[➜](bold green)"     # The "success_symbol" segment is being set to "➜" with the color "bold green"

# Disable the package module, hiding it from the prompt completely
[package]
disabled = true' >> ~/.config/starship.toml
#------------------------------------------------------------------------------------#