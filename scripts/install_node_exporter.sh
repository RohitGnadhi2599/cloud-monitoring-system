#!/bin/bash
wget https://github.com/prometheus/node_exporter/releases/download/v1.7.0/node_exporter-1.7.0.linux-amd64.tar.gz
tar -xzf node_exporter*.tar.gz
cd node_exporter-1.7.0.linux-amd64

sudo cp node_exporter /usr/local/bin/
nohup node_exporter &
echo "Node Exporter running on port 9100"
