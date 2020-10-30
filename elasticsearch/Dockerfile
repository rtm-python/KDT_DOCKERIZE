# Use CentOS 8 official docker-image
FROM centos:8

# Install ElasticSearch
RUN dnf install -y java-11-openjdk-devel
RUN rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch
RUN printf "[elasticsearch-7.x]\nname=Elasticsearch repository for 7.x packages\nbaseurl=https://artifacts.elastic.co/packages/7.x/yum\nenabled=1\ngpgcheck=1\ngpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch\nautorefresh=1\ntype=rpm-md" > /etc/yum.repos.d/elasticsearch.repo
RUN dnf install -y elasticsearch

# Start ElasticSearch
WORKDIR /usr/share/elasticsearch/bin
USER elasticsearch
CMD [ "./elasticsearch" ]
EXPOSE 9200
