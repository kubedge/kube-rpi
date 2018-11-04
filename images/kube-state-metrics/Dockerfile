FROM        arm32v7/busybox:glibc

COPY kube-state-metrics /

ENTRYPOINT ["/kube-state-metrics", "--port=8080", "--telemetry-port=8081"]

EXPOSE 8080
EXPOSE 8081
