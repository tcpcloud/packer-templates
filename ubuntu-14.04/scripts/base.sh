# TODO: move this to packages.sh
apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade
apt-get -y install linux-headers-$(uname -r)
apt-get -y install curl
# apt-get -y install cloud-init

# to be removed
#sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=sudo' /etc/sudoers
#sed -i -e 's/%sudo  ALL=(ALL:ALL) ALL/%sudo  ALL=NOPASSWD:ALL/g' /etc/sudoers

