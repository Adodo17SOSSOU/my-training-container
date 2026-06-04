# Utilise une image PyTorch officielle avec CUDA 12.1 (runtime, sans drivers)
FROM pytorch/pytorch:2.1.0-cuda12.1-cudnn8-runtime

# Installe des dépendances système
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    wget \
    vim \
    htop \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Installe des librairies Python
RUN pip install --no-cache-dir \
    numpy \
    pandas \
    matplotlib \
    scikit-learn \
    tensorboard

# Copie ton code (optionnel)
# COPY train.py /app/
# WORKDIR /app
