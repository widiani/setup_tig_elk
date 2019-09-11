#!/bin/bash
#jawab="Y"
#read -p "Lakukan Instalasi telegraf? (Y/N) " pilih;
#if [ $pilih == $jawab ];
#then
	echo "update repository"
	wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
	echo "deb https://artifacts.elastic.co/packages/5.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-5.x.list
	sudo apt-get update && sudo apt-get install openjdk-8-jdk
	echo JAVA_HOME=$(find /usr/lib/jvm/ -name "*openjdk*" -type d) >> /etc/environment
	source /etc/environment
	echo "=========================================================="
	echo "instalasi dan persiapan konfig filebeat"
	sudo apt-get install filebeat -y
	mkdir /opt/backups/filebeat -p
	sudo cp /etc/filebeat/filebeat.yml /opt/backups/filebeat/filebeat.yml.bak
	echo "=========================================================="
	echo "instalasi selesai"
	exit 0
#else
#	echo "instalasi dibatalkan"
#	exit 1
#fi
