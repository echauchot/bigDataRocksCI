#! /bin/sh
docker network create --subnet 203.0.113.0/24 --gateway 203.0.113.254 iptastic
docker create --ip 203.0.113.2 --net iptastic --name elasticsearch elasticsearch:2.3.2
docker create --ip 203.0.113.3 --net iptastic --name cassandra cassandra:3.0.5
