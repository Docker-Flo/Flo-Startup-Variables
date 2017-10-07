#!/bin/ash

cd /mnt/server
#Create the server information so the pre-flight picks up on it
curl https://git.corinthmc.com/snippets/8/raw > server.properties

echo '#!/bin/bash

#Variables
SERVERLOC="/home/container"
TMPLOC="/tmp"

#Locate to the Servers location ($SERVERLOC)
cd $SERVERLOC

#If Server is empty check
  if [ "$(ls -A $SERVERLOC)" ];
    then
      #Make sure the /tmp directory exists
        mkdir -p $TMPLOC
        
        #Copy the start.sh + logs + server.properties to the /tmp directory
          cp $SERVERLOC/start.sh $TMPLOC
            cp $SERVERLOC/server.properties $TMPLOC
              cp -r $SERVERLOC/logs $TMPLOC/logs

      #Remove everything from the container! (Apart from /tmp)        
      rm -rf $SERVERLOC/* 2> /dev/null
      rm -rf $SERVERLOC/.* 2> /dev/null
    else
      
      #First time the server has been ran, resync not needed!
      echo "Welcome first time user!"
  fi
  
  #Build the CPU and Ram Variables for the system!
  echo 'INTERNAL_CPU_USAGE="grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage}'"' >> /etc/profile
  #NO RAM METHOD YET
  
  #Git pulling (Without Debug info, so we dont spam the console)
  git clone --quiet https://*@*git.corinthmc.com:443/Corinth/Flo/flo-1.9.git . 2> /dev/null
  
    #Move the start.sh + server.properties + the logs back to the server
    cp $TMPLOC/start.sh $SERVERLOC/
      cp $TMPLOC/server.properties $SERVERLOC/
        cp -r $TMPLOC/logs $SERVERLOC/

        #Delete anything older than 5 days from the container
         find $TMPLOC* -mtime +5 -exec rm {} \;


clear' > start.sh

echo "copy complete!"
