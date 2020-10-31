#!/bin/bash

docker build --network host --rm --build-arg VENV_USER=csv2neo4j --build-arg VENV_PATH=/opt/csv2neo4j/venv --tag csv2neo4j_api:devel -f Dockerfile/api . && docker run -it --rm --network host -p 8000:8000 csv2neo4j_api:devel
