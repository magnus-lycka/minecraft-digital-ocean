# minecraft-digital-ocean

Repository for maintaining a Minecraft server as a Digitalocean droplet.

Steps 1 & 5 only needs to be done when a new server is set up, because we need a bigger server or an additional server etc.

## 1. Create droplet to use as minecraft server

Do this manually in the Digitalocean web UI (or whatever).

Note `<ip-address>` and get hold of the `<private-key-file>`.

## 2. Log in to the minecraft server as root.

    ssh -i <private-key-file> root@<ip-address>

(This might as well be putty in Windows etc.)

## 3. Fetch this repository from that machine and enter it.

    git clone git@github.com:magnus-lycka/minecraft-digital-ocean.git
    cd minecraft-digital-ocean

Next time you want use this repo, just run `git pull -r` to get the latest version.

## 4. Run the init script to prepare the new server

    ./init.sh

## 5. Logout as root

    exit

## 6. Login as minecraft and start screen.

    ssh -i <private-key-file> minecraft@<ip-address>

By running the minecraft server as the `minecraft` user, not `root we make it harder for hackers to mess up our server. We will now run screen to stop the programs we start from exiting when we logout.

Info about screen here: https://www.youtube.com/watch?v=3S3I9lT6eKE

If you already have a screen session running (run `screen -ls` to check) you can use

    screen -r

to reattach to that session. Otherwise start a new session with

    screen

When you are done with the stuff below, type `Ctrl-A-D` to detach from the screen session and leave minecraft running, and `exit` to logout from the server.

## 7. Get the repo again...

The minecraft user also wants this repo...

    git clone git@github.com:magnus-lycka/minecraft-digital-ocean.git
    cd minecraft-digital-ocean

