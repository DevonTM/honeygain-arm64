FROM ubuntu:latest

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y libgcc-s1-amd64-cross curl unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY root /

RUN curl -LO https://github.com/ptitSeb/box64/releases/latest/download/box64-GENERIC_ARM-RelWithDebInfo.zip

RUN unzip box64-GENERIC_ARM-RelWithDebInfo.zip -d /app && rm -f box64-GENERIC_ARM-RelWithDebInfo.zip && chmod +x /app/box64

ENTRYPOINT ["/init.sh"]
