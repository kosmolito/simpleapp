FROM registry.access.redhat.com/ubi9:latest

# Install some applications
RUN dnf -y update && \
    dnf install -y nmap iproute bash && \
    dnf clean all

ENTRYPOINT ["/usr/bin/nmap"]
CMD ["-sn", "172.17.0.0/24"] 