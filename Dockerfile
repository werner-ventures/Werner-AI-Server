FROM gcr.io/deeplearning-platform-release/base-cu101

RUN conda install jupyterhub && \
    conda install zeromq && \
    conda install modin && \
    conda install -c anaconda caffe-gpu && \
    conda install theano && \
    conda install pip && \
    conda pip install --no-cache-dir pycuda && \
    conda pip install --no-cache-dir onnxruntime-gpu && \
    conda pip install --no-cache-dir horovod && \
    conda pip install --no-cache-dir nvidia-pyindex && \
    conda pip install --no-cache-dir hummingbird-ml && \
    conda pip install --no-cache-dir h2o && \
    conda pip install --no-cache-dir nimbusml && \
    conda clean --all -f -y
