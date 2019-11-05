FROM ubuntu:bionic as base

RUN set -x \
    && apt update && apt-get install -y --no-install-recommends --no-install-suggests curl ca-certificates \
    && curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.16.0/bin/linux/amd64/kubectl \
    && chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl

FROM ubuntu:bionic

COPY --from=base /usr/local/bin/kubectl /usr/local/bin/kubectl
