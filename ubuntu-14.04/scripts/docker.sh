# This should simulate preseed behavior

apt-get -y install curl

echo "deb [arch=amd64] http://apt.cloudlab.cz/nightly trusty main cloudlab security" >/etc/apt/sources.list
curl -s http://apt.cloudlab.cz/public.gpg | apt-key add -

apt-get update

# Kernel makes no sense in docker, let base.sh know
touch /tmp/no_install_kernel
