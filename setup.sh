u="$USER"

echo "Copying dot files..."
cp Dots/.* /home/$u/
echo "Dot files copied."

echo ""

read -p 'Would you like to join this computer to a domain? [Y/n]: ' dom_join
if [ $dom_join = 'y' ]
then
	sudo apt -y install realmd sssd sssd-tools libnss-sss libpam-sss adcli samba-common-bin oddjob oddjob-mkhomedir packagekit
	read -p "What's the name of the domain you'd like to join?" dom_name
	sudo realm join $dom_name
	sudo echo "session optional        pam_mkhomedir.so skel=/etc/skel umask=077" > /etc/pam.d/common-session
	sudo sed 's#use_fully_qualified_names = True#use_fully_qualified_names = False' /etc/sssd/sssd.conf
	sudo systemctl restart sssd
fi
