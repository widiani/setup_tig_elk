#!/bin/bash
#jawab="Y"
#read -p "Lakukan Instalasi telegraf? (Y/N) " pilih;
#if [ $pilih == $jawab ];
#then
	echo "update repository"
	curl -sL https://repos.influxdata.com/influxdb.key | sudo apt-key add - 
	echo "deb https://repos.influxdata.com/debian stretch stable" | sudo tee /etc/apt/sources.list.d/influxdb.list
	sudo apt-get update && sudo apt-get install telegraf
	sudo systemctl start telegraf && sudo systemctl enable telegraf
	echo "=========================================================="
	echo "persiapan konfigurasi telegraf"
	sudo cp /etc/telegraf/telegraf.conf /etc/telegraf/telegraf.conf.bak
	echo "=========================================================="
	echo "instalasi selesai"
	exit 0
#else
#	echo "instalasi dibatalkan"
#	exit 1
#fi
