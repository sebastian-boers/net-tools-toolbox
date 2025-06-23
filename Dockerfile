# Dockerfile
FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y \
    iputils-ping \
    iproute2 \
    net-tools \
    curl \
    wget \
    tcpdump \
    traceroute \
    nmap \
    dnsutils \
    mtr \
    iperf3 \
    ethtool \
    speedtest-cli \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/bin/bash"]
