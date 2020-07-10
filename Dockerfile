FROM rocker/rstudio

LABEL maintainer="Richard Torkar <richard.torkar@gmail.com>"

COPY scripts /rocker_scripts

# install rstan etc.
RUN /rocker_scripts/install_stan.sh

RUN R -e "install.packages('kableExtra')

# configure 
RUN /rocker_scripts/install_env.sh

# d/l any repos needed
RUN /rocker_scripts/install_repl.sh

EXPOSE 8787

CMD ["/init"]
