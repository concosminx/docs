# Disk management

* `df -h` = see partitions info
* mount points = a directory used to access the data on a partition 
* mounting over existing data
  * `mkdir /home/sarah`
  * `mount /dev/sdb2 /home` = you will not be able to see /home/sarah now
  * `umount /home` = you can now see /home/sarah again
* `umount DEVICE_OR_MOUNT_POINT`
  * `umount /opt`
  * `umount /dev/sdb3`
* `mount DEVICE MOUNT_POINT`
  * `mount /dev/sdb3 /opt`
  * `mount` = see output
* persist mount = use `/etc/fstab`
  * controls what devices get mounted and where on boot
  * entry is made up of 6 fields: device, mount point, file system type, mount options, dump, fsck order

* `fdisk` = tool
  * alternatives: `gdisk`, `parted`

* `mkfs`
  * `mkfs -t TYPE DEVICE`
  * `mkfs -t ext3 /dev/sdb2`
  * `mkfs.ext4 /dev/sdb3`
  * `ls -1 /sbin/mkfs*`
  
* preparing swap space
  * `mkswap /dev/sdb1`
  * `swapon /dev/sdb1`
  * `swapon -s`
  
* viewing Labels and UUIDs
  * `lsblk –f`
  * `blkid`

* labeling a file system 
  * `e2label /dev/sdb3 opt`




