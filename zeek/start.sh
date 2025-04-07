#!/bin/sh

# This script uses tcpreplay to replay packet capture (PCAP) files.
# /pcaps/syslog.pcap must exist.

echo "Create dummy network"
ip link add dummy0 type dummy
ifconfig dummy0 mtu 3000
ifconfig dummy0 up

echo "Listen on dummy network with zeek packet sniffer"
/usr/local/zeek/bin/zeek -i dummy0 local "Site::local_nets += {192.168.1.0/24 }" &

echo "Replay zeek packet sniff from exfiltration exercise and send to Kafka via Zeek Kafka Plugin"
/usr/bin/tcpreplay -i dummy0 --loop=1000000 /pcaps/zeek_streamer.pcap &

echo "Follow /dev/null to keep script running and container alive"
tail -f /dev/null

# Get proper sigterm signal handling in Docker
exec "$@"
