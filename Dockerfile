FROM gcr.io/deeplearning-platform-release/basecu101
RUN conda install zeromq
RUN conda install caffe-gpu
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
