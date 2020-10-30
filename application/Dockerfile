# Use CentOS 8 official docker-image
FROM centos:8

# Move to opt-folder
WORKDIR /opt

# Clone from git-repository
RUN yum install -y git
RUN git clone https://github.com/rtm-python/KDT_CSV2NEO4J.git

# Install Python 3.6
RUN yum install -y python36

# Create virtual environment
ENV VENV=/opt/csv2neo4j_venv
RUN python3 -m venv $VENV
ENV PATH="$VENV/bin:$PATH"

# Move to application-folder
WORKDIR /opt/KDT_CSV2NEO4J

# Install pip-requirements and run application
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
CMD [ "uvicorn", "run:app" ]
EXPOSE 8000
