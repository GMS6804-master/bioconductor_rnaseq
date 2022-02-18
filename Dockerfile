# Docker inheritance
FROM bioconductor/bioconductor_docker:devel

RUN apt-get update
    RUN R -e 'BiocManager::install(ask = F)' && R -e 'BiocManager::install(c("magick", \
    "tidyverse", "vroom", "VennDiagram", "PerformanceAnalytics", \
    "GO.db", "corrplot", ask = F))' \
	&& R -e 'tinytex::install_tinytex()' \
	&& R -e 'install.packages("dplyr")'

### Install asciinema
RUN apt-get install -y  \
asciinema \  

# please work with Xinsong to identify how to install r packages and bioconductor packages via dockerfile
# try this methods blog as a starting point: 

# Install required Bioconductor package
# RUN apt-get update 
# RUN R -e 'BiocManager::install(ask = F)' && 'BiocManager::install("microbiome")' 

# Install required r package
# RUN R "install.packages('dplyr',dependencies=TRUE, repos='http://cran.rstudio.com/')"

