service docker stop
chmod 777 /var/run/docker.sock
touch /etc/docker/daemon.json 
echo "{\"data-root\": \"/docker\"}" > /etc/docker/daemon.json 
rsync -aP /var/lib/docker/ /docker
rm -rf /var/lib/docker
service docker start