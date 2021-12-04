# Docker inheritance
FROM bioconductor/bioconductor_docker:devel

### change a working directory to /opt
WORKDIR /opt

### Install asciinema
RUN apt-get update && apt-get install -y  \
asciinema \  


