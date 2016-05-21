#! /bin/sh
docker network create --subnet 203.0.113.0/24 --gateway 203.0.113.254 iptastic
docker run --rm --ip 203.0.113.2 -it --net iptastic --name elasticsearch elasticsearch:2.3.2
docker run --rm --ip 203.0.113.3 -it --net iptastic --name cassandra cassandra:3.0.5
