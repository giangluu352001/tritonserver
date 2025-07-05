# Triton Inference Server v25.06 — CPU Only

A custom Docker image of **NVIDIA Triton Inference Server v25.06** built with **CPU-only support** and the following backends:

- ✅ ONNX Runtime
- ✅ Python
- ✅ OpenVINO
- ✅ Ensemble (for model chaining)

---

## 📦 Image Details

- **Version:** 25.06  
- **Type:** CPU-only  
- **Backends:** `onnxruntime`, `python`, `openvino`, `ensemble`  
- **Endpoints:** gRPC (`8001`), HTTP (`8000`)

---

## 📌 Usage

Run the container:

```bash
docker run -it --rm \
  -p8000:8000 -p8001:8001 \
  -v /path/to/models:/models \
  yourdockerhub/tritonserver:25.06-cpu
