#!/bin/bash
set -e

apt-get -qq update \
&& apt-get -y install apt-utils libnode-dev libxt6 libxml2-dev libglpk-dev \
&& install2.r --error --skipinstalled \
    rstanarm \
    tidybayes \
    blavaan \
    coda \
    mvtnorm \
    devtools \
    dagitty \
    tidyverse \
    ggthemes \
    patchwork \
    extraDistr \
    ggridges \
    forcats \
    V8 \
    projpred \
    shape \
    bookdown \
    BH \
    tufte \
    openxlsx \
    remotes \
    synthpop \
brms \
&& installGithub.r rmcelreath/rethinking \
&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds
