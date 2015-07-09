# Start all services
$GRIDINITCMD -S $GRIDINIT_SOCKET start

sleep 5

# Install memcached
/usr/bin/yum -y install memcached
/usr/bin/systemctl enable memcached.service
/usr/bin/systemctl start memcached.service

# Install swift client
/usr/bin/yum -y install python-swiftclient
