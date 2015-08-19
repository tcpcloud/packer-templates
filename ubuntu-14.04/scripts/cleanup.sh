apt-get -y autoremove --purge
apt-get -y clean

echo "cleaning up guest additions"
rm -rf VBoxGuestAdditions_*.iso VBoxGuestAdditions_*.iso.?

echo "cleaning up dhcp leases"
rm /var/lib/dhcp/*

echo "cleaning up udev rules"
rm /etc/udev/rules.d/70-persistent-net.rules
mkdir /etc/udev/rules.d/
rm -rf /dev/.udev/
[ -f /lib/udev/rules.d/75-persistent-net-generator.rules ] && rm /lib/udev/rules.d/75-persistent-net-generator.rules
echo "cleaning up minion_id for salt"
[ -f /etc/salt/minion_id ] &&  rm /etc/salt/minion_id

