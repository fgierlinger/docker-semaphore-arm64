FROM ubuntu:latest
ARG SEMAPHORE_VERSION=2.6.9

RUN apt update && apt install -y curl && curl -O -L https://github.com/ansible-semaphore/semaphore/releases/download/v${SEMAPHORE_VERSION}/semaphore_${SEMAPHORE_VERSION}_linux_arm64.deb
RUN apt install -y python3-pip && pip install ansible
RUN apt install -y ./semaphore_${SEMAPHORE_VERSION}_linux_arm64.deb
CMD ["/usr/bin/semaphore"]