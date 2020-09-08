FROM gcr.io/deeplearning-platform-release/base-cu101
RUN conda update --all && conda init && \
    conda create -n cling && \
    conda activate cling && \
    conda install jupyterhub jupyterlab cmake zeromq xeus-cling caffe theano pip && \
    pip install --no-cache-dir modin[all] pycuda onnxruntime-gpu horovod nvidia-pyindex hummingbird-ml h2o nimbusml && \
    conda clean --all -f -y
