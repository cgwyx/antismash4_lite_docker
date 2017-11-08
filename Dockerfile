# Standalone antiSMASH build
# VERSION 0.0.5
FROM antismash/standalone-lite:4.0.0
MAINTAINER cheng gong <512543469@qq.com>

ENV ANTISMASH_URL="https://dl.secondarymetabolites.org/releases"
ENV ANTISMASH_VERSION="4.0.0"

# Grab the databases
WORKDIR /antismash-${ANTISMASH_VERSION}
#RUN python download_databases.py

ADD instance.cfg antismash/config/instance.cfg

#VOLUME ["/input", "/output"]
#WORKDIR /output

#ENTRYPOINT ["/usr/local/bin/run"]

CMD ["/bin/bash"]
