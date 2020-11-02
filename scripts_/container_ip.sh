#!/bin/bash

docker network inspect -f '{{json .Containers}}' $(docker network ls -q) | jq '.[] | .Name + ": " + .IPv4Address'
