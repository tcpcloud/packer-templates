## Base packages and setup
# Remove unwanted ubuntu security repository
sed -i '/.*security\.ubuntu.com.*/d' /etc/apt/sources.list

apt-get update

# Cleanup old kernels, ensure latest is installed via virtual package
if [ ! -f /tmp/no_install_kernel ]; then
    apt-get purge -y linux-image-* linux-headers-*
    apt-get install -y linux-generic-lts-utopic

    # Update grub cmdline
    sed -i 's|GRUB_CMDLINE_LINUX_DEFAULT=.*|GRUB_CMDLINE_LINUX_DEFAULT="console=tty0 console=ttyS0,115200n8"|g' /etc/default/grub
    sed -i 's|GRUB_CMDLINE_LINUX=.*|GRUB_CMDLINE_LINUX="console=tty0 console=ttyS0,115200n8"|g' /etc/default/grub
    update-grub
fi

apt-get -y upgrade
apt-get -y dist-upgrade

apt-get autoremove --purge

# Useful tools
apt-get -y install curl wget tmux vim-nox byobu iputils-ping traceroute htop

# Tmux fixes
cat << 'EOF' >> /etc/tmux.conf
set -g default-terminal "screen-256color"
set -g set-titles on
set -g xterm-keys on
EOF

# Setup cloud-init
apt-get -y install cloud-init

# Hack to be able to upload configuration
# (because build is done under ubuntu user)
chown -R root:ubuntu /etc/cloud
chmod -R g+w /etc/cloud

# to be removed
#sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=sudo' /etc/sudoers
#sed -i -e 's/%sudo  ALL=(ALL:ALL) ALL/%sudo  ALL=NOPASSWD:ALL/g' /etc/sudoers

