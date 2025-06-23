# Project overview and usage documentation

# 🧰 Net Tools Toolbox

A lightweight Docker image preloaded with essential network troubleshooting tools.

## 🚀 Usage

Run directly from GitHub Container Registry (GHCR):

```bash
docker run --rm -it --net=host ghcr.io/YOUR_USERNAME/net-tools-toolbox
```

Or build locally:

```bash
docker build -t net-tools-toolbox .
docker run --rm -it --net=host net-tools-toolbox
```

## 🔧 Included Tools

- ping, ip, traceroute, mtr
- tcpdump, nmap, iperf3
- dig, nslookup, ethtool
- speedtest-cli, curl, wget

## 📦 Features

- No installation required on host
- Reproducible and portable
- Host networking mode for full visibility
