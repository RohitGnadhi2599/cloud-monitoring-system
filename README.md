# cloud-monitoring-system
CLOUD MONITORING SYSTEM (PROMETHEUS + GRAFANA)

Overview:
This project sets up a cloud monitoring system using Prometheus, Node Exporter, and Grafana. The system collects CPU, memory, disk, and network metrics in real time and visualizes them using a preconfigured dashboard.

Features:

System-level performance monitoring

Prometheus metric scraping every 5 seconds

Node Exporter to collect CPU, RAM, Disk, Network data

Grafana dashboard included for visualization

Installation scripts included

Folder Structure:
cloud-monitoring-system/
prometheus/
prometheus.yml
grafana/
dashboard.json
scripts/
install_prometheus.sh
install_node_exporter.sh
README.md

Technologies Used:

Prometheus

Grafana

Node Exporter

Linux (Ubuntu recommended)

Architecture:

Node Exporter collects system metrics

Prometheus scrapes Node Exporter every 5 seconds

Grafana visualizes metrics from Prometheus

Setup Instructions:

Step 1: Install Node Exporter
bash scripts/install_node_exporter.sh

Check in browser:
http://localhost:9100/metrics

Step 2: Install Prometheus
bash scripts/install_prometheus.sh

Prometheus UI:
http://localhost:9090

Step 3: Install Grafana manually or via Docker

Step 4: Import dashboard.json into Grafana

Metrics You Can Monitor:

CPU usage percentage

Memory consumption

Disk read/write speed

Network received/transmitted bytes

Load average

Example PromQL Queries:
CPU usage:
100 - avg(irate(node_cpu_seconds_total{mode="idle"}[1m])) * 100

Memory usage:
(node_memory_MemTotal_bytes - node_memory_MemAvailable_bytes)
/ node_memory_MemTotal_bytes * 100

Future Improvements:

Add Alertmanager for SMS/Email alerts

Add logs monitoring using Loki

Add distributed monitoring setup for multi-node environment

Add visualization for long-duration trends (24h, 7d, 30d)
