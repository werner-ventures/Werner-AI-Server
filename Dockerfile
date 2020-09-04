FROM gcr.io/deeplearning-platform-release/base-cu101

RUN conda install jupyterhub && \
    conda install -c anaconda caffe-gpu && \
    conda install theano && \
    conda install pip && \
    pip install --no-cache-dir modin[all] && \
    pip install --no-cache-dir pycuda && \
    pip install --no-cache-dir onnxruntime-gpu && \
    pip install --no-cache-dir horovod && \
    pip install --no-cache-dir nvidia-pyindex && \
    pip install --no-cache-dir hummingbird-ml && \
    pip install --no-cache-dir h2o && \
    pip install --no-cache-dir nimbusml && \
    conda clean --all -f -y
