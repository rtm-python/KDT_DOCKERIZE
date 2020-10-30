# Use CentOS 8 official docker-image
FROM centos:8

# Install Neo4j
RUN dnf install -y java-11-openjdk-devel
RUN rpm --import https://debian.neo4j.com/neotechnology.gpg.key
RUN printf "[neo4j]\nname=Neo4j RPM Repository\nbaseurl=https://yum.neo4j.com/stable\nenabled=1\ngpgcheck=1" > /etc/yum.repos.d/neo4j.repo
RUN cat /etc/yum.repos.d/neo4j.repo
RUN yum install -y neo4j-4.1.3

# Start Neo4j
WORKDIR /usr/bin
CMD [ "./neo4j", "console" ]
EXPOSE 7474
