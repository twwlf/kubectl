FROM alpine:3.11
WORKDIR /usr/local/bin
RUN apk update && apk add --no-cache curl
ARG version
RUN curl -qLO https://storage.googleapis.com/kubernetes-release/release/${version}/bin/linux/amd64/kubectl && chmod +x kubectl
ENTRYPOINT ["/usr/local/bin/kubectl"]
