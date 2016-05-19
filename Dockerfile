FROM alpine:edge

ADD https://s3.amazonaws.com/buildkite-metrics/buildkite-metrics-Linux-x86_64 /buildkite-metrics

RUN chmod +x /buildkite-metrics && \
    mkdir /lib64 && \
    ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

CMD ["/buildkite-metrics"]
