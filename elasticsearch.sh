#!/bin/bash

docker build --network host --rm --tag csv2neo4j_elasticsearch:devel -f Dockerfile/elasticsearch . && docker run -it --rm -p 9200:9200 csv2neo4j_elasticsearch:devel

