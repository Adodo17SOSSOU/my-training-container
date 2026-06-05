FROM pytorch/pytorch:2.1.0-cuda12.1-cudnn8-runtime

RUN apt-get update && apt-get install -y --no-install-recommends \
    git wget vim htop ca-certificates && \
    rm -rf /var/lib/apt/lists/*

RUN pip install numpy pandas matplotlib scikit-learn tensorboard
