#!/bin/ash

. ./speedtest.lib
ooklaServers="http://103.69.44.45/speedtest/host.php"

# get all server list
hosts=$(curl -s $ooklaServers)

# check latency for each server
getBestServer $hosts

performSpeedTest $bestServer