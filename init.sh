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
cp /root/.ssh/authorized_keys /home/minecraft/authorized_keys
chown minecraft:minecraft /home/minecraft/authorized_keys
