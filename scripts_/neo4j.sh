#!/bin/bash

docker build --network host --rm --tag csv2neo4j_neo4j:devel -f Dockerfile/neo4j .
docker run -it --rm \
	-p 7474:7474 \
	-p 7687:7687 \
	--env NEO4J_dbms_default__listen__address=0.0.0.0 \
	--env NEO4J_dbms_connector_bolt_enabled=true \
	--env NEO4J_dbms_connector_bolt_listen__address=0.0.0.0:7687 \
	--env NEO4J_dbms_connector_bolt_advertised__address=0.0.0.0:7687 \
	--env NEO4J_dbms_connector_http_enabled=true \
	--env NEO4J_dbms_connector_http_listen__address=0.0.0.0:7474 \
	--env NEO4J_dbms_connector_http_advertised__address=0.0.0.0:7474 \
	csv2neo4j_neo4j:devel

