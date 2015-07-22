## Base packages and setup
# Remove unwanted ubuntu security repository
sed -i '/.*security\.ubuntu.com.*/d' /etc/apt/sources.list

apt-get update

# Cleanup old kernels, ensure latest is installed via virtual package
apt-get purge -y linux-image-* linux-headers-*
if [ ! -f /tmp/no_install_kernel ]; then
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
