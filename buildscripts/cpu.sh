#!/bin/bash

set -ex;

git clone https://github.com/triton-inference-server/server.git
cd server
git checkout r${NV_VERSION}
python3 build.py \
    --enable-metrics \
    --enable-logging \
    --enable-stats \
    --enable-tracing \
    --enable-cpu-metric \
    --backend ensemble \
    --backend openvino \
    --backend onnxruntime \
    --backend python \
    --endpoint=grpc \
    --endpoint=http