FROM debian:stretch

LABEL version = '0.0.3'
LABEL maintainer = 'Francesco Bianco <info@javanile.org>'

COPY bin/* /usr/local/bin/

RUN apt-get update \
 && apt-get install -y --no-install-recommends ca-certificates ftp zip unzip openssh-client ftp-upload curl wget \
 && apt-get clean \
 && rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/* \
 && cd /usr/local/bin \
 && chmod +x entrypoint cat-version \
 && mkdir -p /app

ENTRYPOINT ["entrypoint"]

WORKDIR /app
