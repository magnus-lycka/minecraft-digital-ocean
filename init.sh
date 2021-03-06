#!/bin/bash

# Prepare software installations
apt update

# Install Java runtime
apt install -y openjdk-8-jre-headless

# Install screen
apt install -y screen

# Open port in firewall
ufw allow 25565

# Create minecraft user
useradd -m -s /bin/bash minecraft

# Copy roots authorized_keys file to the minecraft account
mkdir /home/minecraft/.ssh
chmod go-rwx /home/minecraft/.ssh
cp /root/.ssh/authorized_keys /home/minecraft/.ssh/authorized_keys
chown -R minecraft:minecraft /home/minecraft/.ssh
