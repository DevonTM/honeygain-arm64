FROM debian:bookworm-slim

ARG BOX64_VERSION=v0.2.4
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y \
      ca-certificates \
      curl \
      libgcc-s1-amd64-cross \
      unzip \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* \
 && update-ca-certificates

COPY root /

RUN curl -LO https://github.com/ptitSeb/box64/releases/download/${BOX64_VERSION}/box64-GENERIC_ARM-RelWithDebInfo.zip \
 && unzip box64-GENERIC_ARM-RelWithDebInfo.zip -d /bin \
 && rm -f box64-GENERIC_ARM-RelWithDebInfo.zip \
 && chmod +x /bin/box64

ENTRYPOINT ["/init.sh"]
