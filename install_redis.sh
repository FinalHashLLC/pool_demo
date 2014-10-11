#!/bin/sh
echo("Downloading Redis Source Code")
wget http://download.redis.io/redis-stable.tar.gz
echo("Unpacking Source Code")
tar xvzf redis-stable.tar.gz
cd redis-stable
echo("Compiling Redis")
make
echo("Copying Redis to /usr/bin")
sudo cp src/redis-server /usr/local/bin/
sudo cp src/redis-cli /usr/local/bin/
echo("Creating Startup/Storage Directories")
sudo mkdir /etc/redis
sudo mkdir /var/redis
sudo cp utils/redis_init_script /etc/init.d/redis_6379
sudo cp redis.conf /etc/redis/6379.conf
sudo mkdir /var/redis/6379
echo("Setting Redis to start at boot")
sudo update-rc.d redis_6379 defaults
echo("Please edit /etc/redis/6379.conf")
echo("The recommended settings that you should change are:")
echo("Set daemonize to yes")
echo("Set pidfile to /var/run/redis_6379.pid")
echo("Set logfile to /var/log/redis_6379.log")
echo("Set loglevel to INFO")
echo("Set /var/redis/6379")
echo("--------------------------------------------------------------------------------------------")
echo("Once Saved Please Start Redis with the following command")
echo("/etc/init.d/redis_6379 start")

