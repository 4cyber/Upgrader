#/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
for i in 5 4 3 2 1 0
do
clear
figlet Upgrader
echo "you have $i seconds to stop the process (ctrl+c)..."
sleep 1
done
apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade
apt-get -y autoremove
echo "All done..."
