# Copy dot files

echo "Copying dot files..."
cd Dots/
cp ./.* ~ -rf
echo "Dot files copied."

echo ""

# Join to domain if needed

read -p 'Would you like to join this computer to a domain? [Y/n]: ' dom_join
if [ $dom_join = 'y' ]
then
	sudo apt -y install realmd sssd sssd-tools libnss-sss libpam-sss adcli samba-common-bin oddjob oddjob-mkhomedir packagekit
	read -p "What's the name of the domain you'd like to join: " dom_name
	sudo realm join $dom_name
	sudo echo "session optional        pam_mkhomedir.so skel=/etc/skel umask=077" > /etc/pam.d/common-session
	sudo sed 's#use_fully_qualified_names = True#use_fully_qualified_names = False' /etc/sssd/sssd.conf
	sudo systemctl restart sssd
fi
cd ~

# Update everything

echo "Updating everything..."
sudo apt update
sudo apt dist-upgrade -y
sudo apt install unattended-upgrades -y
dpkg-reconfigure --priority=low unattended-upgrades

# Make .ssh in home and set proper permissions on it

echo "Making .ssh directory and setting 700 perms on it."
mkdir ~/.ssh && chmod 700 ~/.ssh

# Install my programs

echo "Installing necessary programs."
sudo apt install neovim figlet kde-full kitty neofetch zsh python3-pip wget curl yakuake mpv

# Reconfigure for sddm

dpkg-reconfigure sddm

# Install oh-my-zsh!

echo "Installing oh-my-zsh!"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Clone the powerlevel10k repo

echo "Cloning the powerlevel10k repo."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Configure powerlevel10k

echo "Configuring the powerlevel10k repo."
p10k configure

# Copy zsh folder to home

echo "Copying zsh from repo."
cp ~/Repos/linux-setup/zsh ~ -r

# Make nvim config dir and copy init.vim to it

echo "Setting up the nvim config."
mkdir ~/.config/nvim
cp ~/Repos/linux-setup/init.vim ~/.config/nvim

# Copy kitty dir to .config

echo "Setting up the kitty config."
cp ~/Repos/linux-setup/kitty ~/.config -r

# Copy fonts

echo "Copying fonts."
mkdir ~/.fonts
cp ~/Repos/linux-setup/fonts/* ~/.fonts

# Enable 32-bit libraries

echo "Enabling 32-bit libraries."
sudo dpkg --add-architecture i386

# Install Liquorix

echo "Installing Liquorix..."
sudo add-apt-repository ppa:damentz/liquorix && sudo apt-get update -y
sudo apt-get install linux-image-liquorix-amd64 linux-headers-liquorix-amd64 -y

# Append RADV_PERFTEST=aco to /etc/environment

echo "Appending RADV_PERFTEST=aco to /etc/environment."
echo "RADV_PERFTEST=aco" >> /etc/environment

# Setup Wine and Lutris
echo "Setting up Wine and Lutris..."
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main' -y
sudo add-apt-repository ppa:lutris-team/lutris -y
sudo apt update
sudo apt-get install --install-recommends winehq-staging -y
sudo apt-get install libgnutls30:i386 libldap-2.4-2:i386 libgpg-error0:i386 libxml2:i386 libasound2-plugins:i386 libsdl2-2.0-0:i386 libfreetype6:i386 libdbus-1-3:i386 libsqlite3-0:i386 -y
sudo apt-get install lutris -y

# Setup GameMode

echo "Installing GameMode dependencies..."
sudo apt install meson libsystemd-dev pkg-config ninja-build git libdbus-1-dev libinih-dev dbus-user-session -y

echo "Installing GameMode..."
git clone https://github.com/FeralInteractive/gamemode.git
cd gamemode
./bootstrap.sh

# Install Steam

echo "Installing Steam..."
sudo apt install steam-installer -y

# Setup ProtonUP

echo "Setting up ProtonUP..."
pip install protonup
echo "export PATH=$PATH:~/.local/bin" >> .bashrc
source .bashrc
protonup

# Setup GE's Proton

echo "Setting up GloriousEggroll Proton v7.0rc3-GE-1"
cd ~/Downloads
wget https://github.com/GloriousEggroll/proton-ge-custom/releases/download/7.0rc3-GE-1/Proton-7.0rc3-GE-1.tar.gz
mkdir ~/.steam/root/compatibilitytools.d -p
tar -xf Proton-7.0rc3-GE-1.tar.gz ~/.steam/root/compatibilitytools.d/

# Install Rustup

echo "Installing rustup"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install exa

echo "Installing exa"
cargo install exa
