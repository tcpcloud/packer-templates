# base packages and setup
apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade

# Useful tools
apt-get -y install curl tmux vim-nox byobu

# Cleanup old kernels, ensure latest is installed via virtual package
apt-get purge -y linux-image-* linux-headers-*
apt-get install -y linux-generic-lts-utopic

apt-get autoremove --purge

# Setup cloud-init
apt-get -y install cloud-init
chown root:ubuntu /etc/cloud/cloud.cfg.d
chmod g+w /etc/cloud/cloud.cfg.d

# to be removed
#sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=sudo' /etc/sudoers
#sed -i -e 's/%sudo  ALL=(ALL:ALL) ALL/%sudo  ALL=NOPASSWD:ALL/g' /etc/sudoers

