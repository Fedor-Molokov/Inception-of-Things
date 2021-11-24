mkdir /docker
mkfs -t xfs -f /dev/sda2
mount -t xfs -o defaults /dev/sda2 /docker