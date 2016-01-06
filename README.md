# Packer templates

Packer templates are used to:

  - automagically create OS images with upgraded packages
  - provision user defined changes to created image
  - remove user defined elements from image
  - build single version of OS image for multiple hypervisors

## Features

### Operating Systems

  - Ubuntu 14.04

### Providers

  - qemu
  - docker
  - virtualbox
  - vagrant/libvirt
  - vagrant/virtualbox
  - digitalocean

## Usage

### Install Packer

```sh
PACKER_URL="https://dl.bintray.com/mitchellh/packer/packer_0.8.2_linux_amd64.zip"
PACKER_ZIP=$(basename ${PACKER_URL})
PACKER_ZIP_MD5="bc37abe5e183a11bd8c1b2efc385059b"

mkdir -p ~/bin/packer
cd ~/bin/packer
export PATH="${PATH}:~/bin/packer"

wget -O ${PACKER_ZIP} ${PACKER_URL}
echo "${PACKER_ZIP_MD5}  ${PACKER_ZIP}" >> md5sum
md5sum -c --status md5sum

unzip ${PACKER_ZIP}
```

### Image build

Enter build directory by selecting OS type and version.
You should see file **template.json**.

Start building some images:

```sh
packer build -only=virtualbox-iso template.json
```

### Development

Directory *http/* contains OS installer config files (preseed/kickstart/..)

Directory *scripts/* contains set of scripts for provision after image build.

### Notes

- some builders cannot work at the same time (by design)
