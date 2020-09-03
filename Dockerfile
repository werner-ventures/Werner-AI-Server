FROM gcr.io/deeplearning-platform-release/base-cu101

#modin
RUN conda install modin[all]

#onnx runtime
RUN pip install onnxruntime-gpu

#hummingbird
RUN pip install hummingbird-ml
