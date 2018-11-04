FROM        arm32v7/busybox:glibc
LABEL maintainer="The Prometheus Authors <prometheus-developers@googlegroups.com>"

COPY node_exporter /bin/node_exporter
COPY LICENSE /LICENSE
COPY NOTICE /NOTICE

EXPOSE      9100
USER        nobody
ENTRYPOINT  [ "/bin/node_exporter" ]
