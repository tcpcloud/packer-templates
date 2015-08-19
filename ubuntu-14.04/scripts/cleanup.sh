apt-get -y autoremove --purge
apt-get -y clean

echo "cleaning up guest additions"
rm -rf VBoxGuestAdditions_*.iso VBoxGuestAdditions_*.iso.? || true

echo "cleaning up dhcp leases"
rm /var/lib/dhcp/* || true

echo "cleaning up udev rules"
rm -f /etc/udev/rules.d/70-persistent-net.rules || true
rm -rf /dev/.udev/ || true
rm -f /lib/udev/rules.d/75-persistent-net-generator.rules || true

echo "cleaning up minion_id for salt"
rm -f /etc/salt/minion_id || true

