FROM gcr.io/deeplearning-platform-release/basecu101
RUN conda install jupyterhub
RUN conda install zeromq
RUN conda install caffe
RUN conda install theano
RUN conda install pip
RUN pip install --no-cache-dir modin[all]
RUN pip install --no-cache-dir pycuda
RUN pip install --no-cache-dir onnxruntime-gpu
RUN pip install --no-cache-dir horovod
RUN pip install --no-cache-dir nvidia-pyindex
RUN pip install --no-cache-dir hummingbird-ml
RUN pip install --no-cache-dir h2o
RUN pip install --no-cache-dir nimbusml
RUN conda clean --all -f -y

FROM gcr.io/deeplearning-platform-release/base-cu101

RUN conda install jupyterhub && \
    cmake && \
    zeromq && \
    caffe && \
    theano && \
    pip \
    conda pip install --no-cache-dir modin[all] && \
    pycuda && \
    onnxruntime-gpu && \
    horovod && \
    nvidia-pyindex && \
    hummingbird-ml && \
    h2o && \
    nimbusml \
    conda clean --all -f -y
