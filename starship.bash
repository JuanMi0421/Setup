#!/bin/bash
echo "Please enter password"
sudo echo "Thanks!"

###################################### Starship ######################################

#--------------------------------------Nerd Font-------------------------------------#
cd /usr/share/fonts

sudo mkdir nerd_fonts
cd /usr/share/fonts/nerd_fonts

sudo wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Agave.zip

sudo unzip Agave.zip 
sudo rm Agave.zip
#--------------------------------------Nerd Font-------------------------------------#

#-----------------------------------Install Starship---------------------------------#
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

echo "eval "$(starship init bash)"" >> ~/.bashrc
#-----------------------------------Install Starship---------------------------------#

#-------------------------------------Config file------------------------------------#
mkdir -p ~/.config && touch ~/.config/starship.toml

echo '# Inserts a blank line between shell prompts
add_newline = true

# Replace the "❯" symbol in the prompt with "➜"
[character]                            # The name of the module we are configuring is "character"
success_symbol = "[➜](bold green)"     # The "success_symbol" segment is being set to "➜" with the color "bold green"

# Disable the package module, hiding it from the prompt completely
[package]
disabled = true' >> ~/.config/starship.toml
#-------------------------------------Config file------------------------------------#

###################################### Starship ######################################



#################################### Dracula Theme ###################################

#------------------------------------Gnome Terminal----------------------------------#
sudo apt-get install dconf-cli

git clone https://github.com/dracula/gnome-terminal

cd gnome-terminal
./install.sh
#------------------------------------Gnome Terminal----------------------------------#

#-----------------------------------------GTK----------------------------------------#
cd /usr/share/themes
sudo wget https://github.com/dracula/gtk/archive/master.zip

sudo unzip master.zip

sudo gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
sudo gsettings set org.gnome.desktop.wm.preferences theme "Dracula"

cd /usr/share/icons
sudo wget https://github.com/dracula/gtk/files/5214870/Dracula.zip

sudo unzip Dracula.zip

sudo gsettings set org.gnome.desktop.interface icon-theme "Dracula"
#-----------------------------------------GTK----------------------------------------#

#################################### Dracula Theme ###################################
