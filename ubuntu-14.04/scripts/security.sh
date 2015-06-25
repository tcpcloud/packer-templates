# Auto login root on tty1
sed -i 's|/sbin/getty|/sbin/getty --autologin root|g' /etc/init/tty1.conf

# Disable password root login
usermod -p '!' root

# Disable SSH password authentication and permit root login
sed -i 's|[#]*PasswordAuthentication yes|PasswordAuthentication no|g' /etc/ssh/sshd_config
sed -i 's|[#]*PermitRootLogin no|PermitRootLogin yes|g' /etc/ssh/sshd_config
