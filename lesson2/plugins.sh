#!/bin/bash

plugin=""
version=""
iteration=0
iter=0

if [ ! -d "/opt/plugins" ]
then
	echo "Сейчас создам для вас директорию в /opt. Понадобятся супер-права!"
	sudo mkdir /opt/plugins
	sudo chown "$USER" /opt/plugins
fi

while IFS= read -r line
do
  if [ $iteration -eq "0" ]
  then
	iteration=1
	plugin=`echo $line | sed 's/.* //'`
  else
	iteration=0
	version=`echo $line | sed 's/.* //'`
	wget https://updates.jenkins.io/download/plugins/$plugin/$version/$plugin.hpi -P /opt/plugins
  fi
  iter=$iter+1
done < $1
