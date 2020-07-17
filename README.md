[![DOI](https://zenodo.org/badge/277138015.svg)](https://zenodo.org/badge/latestdoi/277138015)

# Dockerfile for Stan

This Docker file is part of a replication package for the manuscript on feature selection.

## Run via <http://hub.docker.com>

You can choose to run the latest version as-is from <http://hub.docker.com> in your terminal directly,

```{bash}
docker run -d -p 8787:8787 -e PASSWORD=foo -e ROOT=TRUE torkar/docker_bda:feature_selection
```

The password above is set to `foo` (change if needed). Next, point your browser to <http://localhost:8787> and use `rstudio` as your username and the password you just set.
