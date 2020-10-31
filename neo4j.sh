#!/bin/bash

docker build --network host --rm --tag csv2neo4j_neo4j:devel -f Dockerfile/neo4j . && docker run -it --rm --env NEO4J_dbms_default__listen__address=0.0.0.0 -p 7474:7474 csv2neo4j_neo4j:devel

