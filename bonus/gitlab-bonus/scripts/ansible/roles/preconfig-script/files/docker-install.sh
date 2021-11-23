mkdir /docker
mkfs -t xfs -f /dev/sda2
mount -t xfs -o defaults /dev/sda2 /docker
service docker stop
touch /etc/docker/daemon.json 
echo "{\"data-root\": \"/docker\"}" > /etc/docker/daemon.json 
rsync -aP /var/lib/docker/ /docker
rm -rf /var/lib/docker