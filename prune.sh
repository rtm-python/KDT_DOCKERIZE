#!/bin/bash

yes | docker container prune
yes | docker image prune
docker image rm --force kdt_dockerize_api kdt_dockerize_neo4j
