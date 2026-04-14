# net-tools-toolbox

Docker image with the network tools I actually use.  
Built to avoid installing/debugging tools on random hosts and to keep a consistent workflow.

---

## usage

```bash
docker run --rm -it --net=host ghcr.io/sebastian-boers/net-tools-toolbox
```

### Local build:

```bash
git clone https://github.com/sebastian-boers/net-tools-toolbox.git
cd net-tools-toolbox
docker build -t net-tools-toolbox .
docker run --rm -it --net=host net-tools-toolbox
```

---

### what’s in it

#### path / reachability
- ping
- traceroute
- mtr

#### throughput
- iperf3
- speedtest-cli

#### dns / http
- dig, nslookup
- curl, wget

#### inspection
- tcpdump

#### misc
- ip
- nmap
- ethtool

---

### how I use it

#### Not trying to cover everything — just the common flow:
- can I reach it? → ping
- where does it break? → mtr
- is it slow or just broken? → iperf3 / speedtest-cli
- dns or not? → dig
- debug traffic output? → tcpdump

---

#### notes
- run with --net=host so everything targets the host network stack
- container is just a wrapper — not the thing being debugged
- tcpdump is useful here since it sees real traffic
- ethtool is mostly for edge cases (bare metal, nic issues)

---

#### why

Mostly convenience.
a standardized network troubleshooting tool-kit is always handy
