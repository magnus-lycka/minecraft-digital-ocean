#!/bin/bash

# For reference, see https://www.digitalocean.com/community/tutorials/how-to-create-a-minecraft-server-on-ubuntu-20-04

# Copy relevant URL for server.jar from e.g.
# https://www.minecraft.net/en-us/download/server/
URL=https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar

wget $URL

java -Xmx1900M -Xms1024M -jar server.jar nogui

