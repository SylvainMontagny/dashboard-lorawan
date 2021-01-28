#!/bin/bash
cd ~/lora-lorawan/monitoring
sudo docker-compose down
cd ~
sudo rm -rf lora-lorawan
sudo git clone https://github.com/SylvainMontagny/lora-lorawan
sudo chown -R $USER:$USER lora-lorawan
cd lora-lorawan/monitoring
sudo rm telegraf.conf
sudo mv telegraf_test.conf telegraf.conf
sudo  docker-compose up -d
