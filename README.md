# net-tools-toolbox
Dockerized Network Troubleshooting Toolkit

**Alternative 1**

**Run from GHCR**

docker run ghcr.io/sebastian-boers/net-tools-toolbox:latest



**Alternative 2, build on local machine:**

git clone https://github.com/sebastian-boers/net-tools-toolbox.git
cd net-tools-toolbox
docker build -t nettools-toolbox .
docker run --rm -it nettools-toolbox
