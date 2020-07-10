#!/bin/bash
set -e

# Store the replication package inside the Docker image
mkdir -p /home/rstudio/development \
    && cd /home/rstudio/development \
    && git clone https://github.com/torkar/feature-selection-RBS.git \
    && chown -R rstudio:rstudio /home/rstudio/development
