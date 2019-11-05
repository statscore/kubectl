FROM debian:buster-slim

RUN set -x \
    && apt update && apt-get install -y --no-install-recommends --no-install-suggests curl ca-certificates \
    && curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.16.0/bin/linux/amd64/kubectl \
    && chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl \
    && apt-get purge -y --auto-remove && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* || true
