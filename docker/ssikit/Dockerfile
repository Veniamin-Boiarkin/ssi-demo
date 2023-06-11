FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

SHELL ["/bin/bash", "-c"]

RUN set -x \
    && apt-get update \
    && apt-get install -y wget curl nano git unzip software-properties-common sudo \
    && set +x \

# Install Java 17
RUN set -x \
    && add-apt-repository -y ppa:linuxuprising/java \
    && apt-get update \
    && echo oracle-java17-installer shared/accepted-oracle-license-v1-3 select true | sudo /usr/bin/debconf-set-selections \
    && sudo apt-get install -y oracle-java17-installer \
    && set +x

# Install and build the ssikit
RUN set -x \
    && mkdir -p /ssikit && cd /ssikit \
    && git clone https://github.com/walt-id/waltid-ssikit.git \
    && cd /ssikit/waltid-ssikit \
    && ./ssikit.sh build \
    && set +x

# Clean
RUN set -x \
    && rm -rf /var/lib/apt/lists/* \
    && set +x

COPY ./docker/ssikit/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["sh", "/usr/local/bin/docker-entrypoint.sh"]