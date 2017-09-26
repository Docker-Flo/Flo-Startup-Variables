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
echo -ne '#                         (0%)\r'
sleep 1
  if [ "$(ls -A $SERVERLOC)" ];

    then
      echo -ne '##                        (5%)\r'
      sleep 1
      mv start.sh /tmp & echo -ne '###                       (15%)\r'
      sleep 1
      mv server.properties /tmp & echo -ne '####                      (24%)\r'
      sleep 1
      rm -rf $SERVERLOC/* 2> /dev/null
      echo -ne '######                    (31%)\r'
      sleep 1
      rm -rf $SERVERLOC/.* 2> /dev/null
      echo -ne '########                  (43%)\r'
      sleep 1

    else
  fi

cd $SERVERLOC
 echo -ne '##########                (58%)\r'
 sleep 1
  git clone https://*:*@git.*.com:443/Corinth/container.git . 2> /dev/null
    echo -ne '##################        (75%)\r'
    sleep 1

echo -ne '########################  (94%)\r'
sleep 1
  mv /tmp/start.sh . > /dev/null
    mv /tmp/server.properties . > /dev/null

echo -ne '##########################(100%)\r'
sleep 1
echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
echo "----> All Tasks have been complete! Starting Server <----"
echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
sleep 2

clear' > start.sh

echo "copy complete!"
