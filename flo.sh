#!/bin/ash

cd /mnt/server
#Create the server information so the pre-flight picks up on it
curl https://git.corinthmc.com/snippets/8/raw > server.properties

echo '#!/bin/bash

#Variables
SERVERLOC="/home/container"

#CorinthMC Flo Starter
echo " ______  ___      _______  "
echo "|       ||   |    |       |"
echo "|    ___||   |    |   _   |"
echo "|   |___ |   |    |  | |  |"
echo "|    ___||   |___ |  |_|  |"
echo "|   |    |       ||       |"
echo "|___|    |_______||_______|"

echo "Created By Fonix Hardcastle"
echo "  https://fonix.online"
echo "          v4.2"

#Pause for a few seconds!
  sleep 2

#Move and Empty the Directory & Refil from the Git into $SERVERLOC
  if [ "$(ls -A $SERVERLOC)" ];
    then
      rm -rf $SERVERLOC/* 2> /dev/null
      rm -rf $SERVERLOC/.* 2> /dev/null
    else
      echo "Welcome first time user!"
  fi

cd $SERVERLOC
  git clone https://*:*@git.corinthmc.com:443/Project . 2> /dev/null

sleep 1
  mkdir -p /tmp
    mv /tmp/start.sh /home/container/ 2> /dev/null
      mv /tmp/server.properties /home/container/ 2> /dev/null

echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
echo "----> All Tasks have been complete! Starting Server <----"
echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
sleep 2

clear' > start.sh

echo "copy complete!"
