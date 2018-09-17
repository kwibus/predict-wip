#! /bin/sh

docker-compose up   &
sleep 1
# grafana=$(docker ps -n 2|awk '/grafana/{print $1}')
# prometheus==$(docker ps -n 2|awk '/prometheus/{print $1}')
#
# prom_address=$(docker inspect $prometheus| jq '.[0].NetworkSettings.Networks.test_default.IPAddress' |sed 's#"##g')
# gf_address=$(docker inspect $grafana   | jq '.[0].NetworkSettings.Networks.test_default.IPAddress' |sed 's#"##g')

# echo addres $gf_address
firefox localhost:3000


