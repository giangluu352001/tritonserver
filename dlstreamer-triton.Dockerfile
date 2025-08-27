FROM giang352001/tritonserverbuild:25.08-cpu as tritonserver
FROM giang352001/dlstreamer:latest
COPY --from=tritonserver /opt/tritonserver /opt/tritonserver
COPY --from=tritonserver /usr/lib/x86_64-linux-gnu/libb64.so.0d /usr/lib/x86_64-linux-gnu/
ENV TRITONSERVER_VERSION=25.08
ENV PATH="/opt/tritonserver/bin:${PATH}"
