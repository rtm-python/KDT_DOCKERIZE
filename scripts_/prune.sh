#!/bin/bash

yes | docker container prune
yes | docker image prune
docker image rm --force kdt_dockerize_api kdt_dockerize_neo4j kdt_dockerize_elastic
docker image rm --force csv2neo4j_api:devel csv2neo4j_neo4j:devel csv2neo4j_elastic:devel
