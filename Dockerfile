FROM gcr.io/deeplearning-platform-release/base-cu101

#pycuda
RUN pip install pycuda

#onnx runtime
RUN pip install onnxruntime-gpu

#ØMQ
RUN conda install -c conda-forge zeromq

#hummingbird
RUN pip install hummingbird-ml

#tensorrt + nvidia-tensorflow + horovod
RUN pip install horovod
RUN pip install nvidia-pyindex

#modin
RUN conda install -c modin[all]

#H2O
RUN pip install h2o h2o-py

#ML.NET
RUN pip install nimbusml

#caffe
RUN conda install -c anaconda caffe-gpu

#theano
RUN conda install -c conda-forge theano
