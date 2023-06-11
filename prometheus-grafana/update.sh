#!/usr/bin/env bash

./umbrel/scripts/app stop prometheus-grafana
./umbrel/scripts/repo checkout https://github.com/martinklewitz/umbrel-apps.git#prometheus
./umbrel/scripts/repo update
./umbrel/scripts/app install prometheus-grafana

docker ps | grep grafana
