# Packer templates

Packer templates are used to:

  - automagically create OS images with upgraded packages
  - provision user defined changes to created image
  - remove user defined elements from image
  - build single version of OS image for multiple hypervisors

### Usage

#### Configuration

Source the config script and set prefered parameters for build
```sh
. ./config.sh
```
### Image build

Enter build directory by selecting OS type and version.
You should see file **template.json**.

Start building some images:
```sh
packer build template.json 
```

### Development

Directory *http/* contains OS installer config files (preseed/kickstart/..)

Directory *scripts/* contains set of scripts for provision after image build.

### Notes

- see *Changelog.md* file for supported builders and operating systems
- some builders cannot work at the same time (by design)


