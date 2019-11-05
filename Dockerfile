FROM debian:buster

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.16.0/bin/linux/amd64/kubectl \
    && chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl
