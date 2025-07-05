ARG NV_VERSION=25.06

FROM nvcr.io/nvidia/tensorrt:${NV_VERSION}-py3 as builder

FROM hieupth/mamba

COPY --from=builder /opt/tensorrt /opt/tensorrt

RUN conda install -y jinja2 psutil distro requests && \
    conda clean -ay