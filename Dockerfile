FROM gcr.io/deeplearning-platform-release/base-cu101

RUN sudo conda install jupyterhub jupyterlab cmake zeromq caffe theano pip && \
    sudo pip install --no-cache-dir modin[all] pycuda onnxruntime-gpu horovod nvidia-pyindex hummingbird-ml h2o nimbusml && \
    sudo conda clean --all -f -y && \
