# KDT_DOCKERIZE
_Dockerize python application with Neo4j-database and ElasticSearch_


## REQUIREMENTS

* [Docker](https://docs.docker.com/get-started/overview/)
* [docker-compose](https://docs.docker.com/compose/)


## UNRESOLVED ISSUES

* Not solved Docker networking in Linux environment, have no elegant solution for service name resolving, for example, http://neo4j:7474/db/data to connect to Neo4j-database (each service bind to 0.0.0.0)
_Currently all services connects to host network, so all services should bind to localhost_
* Not solved neo4j-database configuration through OS environments, found in the documentation the exact decription how to implement it, but noghing works
_Currently configuration file copied to the image (Linux based)_


## IMPLEMENTATION

* /Dockerfile/api (Dockerfile for python-script image)
* /Dockerfile/neo4j (Dockerfile for Neo4j-database image)
* /Dockerfile/elasticsearch (Dockerfile for ElasticSearch image)

* /scripts/api.sh (build and interactively run python-script)
* /scripts/neo4j.sh (build and interactively run Neo4j-database)
* /scripts/elasticsearch.sh (build and interactively run ElasticSearch)
* /scripts/prune.sh (remove all containers and all images)
* /scripts/secrets.sh (create secrets folder and secret files)
* /scripts/container_ip.sh (show containers ip addresses)

* /secrets/neo4j_uri.txt (URI to connect to Neo4j-database)
* /secrets/neo4j_user.txt (username to connect to Neo4j-database)
* /secrets/neo4j_password.txt (password to connect to Neo4j-database)
* /secrets/elastic_uri.txt (URI to connect to ElasticSearch)

* /conf/neo4j.conf (configuration file to copy)

* /docker-compose.yml


All images based on centos:8 image.

