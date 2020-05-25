# OSISM base image

[![Build Status](https://travis-ci.org/osism/testbed-image.svg?branch=master)](https://travis-ci.org/osism/testbed-image)

OpenStack base image for use in the [OSISM testbed](https://github.com/osism/testbed). Docker and
other necessary software is already pre-installed. It is based on Ubuntu 18.04.

## Download

A daily updated image in QCOW2 format is available at https://files.osism.de/testbed.qcow2.

A monthly updated image in QCOW2 format is available at https://files.osism.de/testbed-YYYY-MM.qcow2.
The last available image is always from the previous month. If it is February, the last available image
is ``2020-01``.

## Upload

```
$ pip3 install python-openstackclient
$ qemu-img convert testbed.qcow2 testbed.img
$ openstack --os-cloud testbed image create \
    --private \
    --disk-format raw \
    --file testbed.img \
    --min-disk 8 \
    --min-ram 2048 \
    --property hw_disk_bus=scsi \
    --property hw_scsi_model=virtio-scsi \
    --property os_distro=ubuntu \
    --property os_version=18.04 \
    "OSISM base"
```

## Build

```
$ pip3 install diskimage-builder
$ sudo apt-get install -y qemu-utils kpartx
$ bash scripts/diskimage.sh
```

## References

* https://github.com/openstack/diskimage-builder
* https://docs.openstack.org/diskimage-builder/latest/

## Author information

This image was created by [Betacloud Solutions GmbH](https://www.betacloud-solutions.de).
