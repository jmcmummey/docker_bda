#!/bin/bash
set -e

# Store the replication package inside the Docker image
mkdir -p /home/rstudio/development \
    && cd /home/rstudio/development \
    && git clone --depth 1 https://github.com/torkar/feature-selection-RBS.git \
    && chown -R rstudio:rstudio /home/rstudio/development
