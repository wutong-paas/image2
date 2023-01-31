# FROM quay.io/coreos/etcd:v3.3.18-arm64

# RUN apt-get update && apt install -y iputils-ping

FROM busybox

RUN echo hello
