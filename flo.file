#!/bin/ash

cd /mnt/server
#Create the server information so the pre-flight picks up on it
curl https://git.corinthmc.com/snippets/8/raw > server.properties

echo '#!/bin/bash

#Variables
SERVERLOC="/home/container"

#CorinthMC Flo Starter
echo "╭━━━┳╮    "
echo "┃╭━━┫┃    "
echo "┃╰━━┫┃╭━━╮"
echo "┃╭━━┫┃┃╭╮┃"
echo "┃┃╱╱┃╰┫╰╯┃"
echo "╰╯╱╱╰━┻━━╯"

echo "Created By Fonix Hardcastle"
echo "  https://fonix.online"

#Pause for a few seconds!
  sleep 2

#Move and Empty the Directory & Refil from the Git into $SERVERLOC
echo "Checking if the Directory is empty"
  if [ "$(ls -A $SERVERLOC)" ];
    
    then
      echo "Found that the directory isnt empty, Emptying now!"
      sleep 1
      mv start.sh /tmp & echo "Moving the start script to /tmp  1/3"
      mv server.properties /tmp & echo "Moving the server.properties file to /tmp   2/3"
      sleep 1
      rm -rf $SERVERLOC/* >/dev/null 2>&1 & echo "Clear the contents of $SERVERLOC   3/3"
      rm -rf $SERVERLOC/.* >/dev/null 2>&1
      echo "Clean Up Complete Moving to Server pull Task"
      sleep 1

    else
      echo "This is the first time the server is being ran? Awesome! HI!"
      sleep 2
  fi

cd $SERVERLOC
 echo "Pulling the Container from https://git.Corinthmc.com"
  git clone https://*:*@git.*.com:443/Corinth/container.git . >/dev/null 2>&1 
    echo "Pull Complete!"

echo "Moving files back in the required places."
  mv /tmp/start.sh . > /dev/null
    mv /tmp/server.properties . > /dev/null

echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
echo "----> All Tasks have been complete! Starting Server <----"
echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
sleep 2

clear' > start.sh

echo "copy complete!"
