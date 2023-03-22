echo Welcome this script will update all of your apps using the softwareupdate command
echo " "
read -p "Are you sure you want to continue? N will exit the script [Y/N] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    softwareupdate -i -r
else
    exit
fi
echo " "
read -p "Do you want to reboot? (recommended) [Y/N] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo shutdown -r now
else
    exit
fi