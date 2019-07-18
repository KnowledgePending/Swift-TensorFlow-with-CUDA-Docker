FROM nvidia/cuda:9.2-devel

LABEL maintainer="Bryan Flood <bryanfloodcontact@gmail.com>"
LABEL description="🐳 Docker environment for Swift GPU Accelerated Machine Learning"
LABEL url="https://github.com/KnowledgePending/Swift-TensorFlow-with-CUDA-Docker"

RUN apt-get -qq update  && \
    apt-get -qq upgrade && \
    apt-get -qq install clang \
                        libpython-dev \
                        libblocksruntime-dev

ADD https://storage.googleapis.com/swift-tensorflow-artifacts/releases/v0.3.1/rc1/swift-tensorflow-RELEASE-0.3.1-cuda9.2-cudnn7-ubuntu18.04.tar.gz \
/swift-tensorflow-RELEASE-0.3.1-cuda9.2-cudnn7-ubuntu18.04.tar.gz

RUN tar xvzf swift-tensorflow-RELEASE-0.3.1-cuda9.2-cudnn7-ubuntu18.04.tar.gz   && \
    rm swift-tensorflow-RELEASE-0.3.1-cuda9.2-cudnn7-ubuntu18.04.tar.gz         && \
    export PATH=$(pwd)/usr/bin:"${PATH}"
