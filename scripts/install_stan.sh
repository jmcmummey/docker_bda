#!/bin/bash
set -e

apt-get -qq update \
&& apt-get -y install apt-utils libnode-dev libxt6 libxml2-dev libglpk-dev \
&& install2.r --error --skipinstalled \
    brms \
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
&& installGithub.r rmcelreath/rethinking \
&& installGithub.r paul-buerkner/brms \
&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds
