FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04

LABEL maintainer="Bryan Flood <bryanfloodcontact@gmail.com>"
LABEL description="🐳 Docker environment for Swift GPU Accelerated Machine Learning"
LABEL url="https://github.com/KnowledgePending/Swift-TensorFlow-with-CUDA-Docker"

RUN apt-get -qq update  && \
    apt-get -qq upgrade && \
    apt-get -qq install clang \
                        libpython-dev \
                        libblocksruntime-dev \
                        wget \
                        software-properties-common && \
    add-apt-repository ppa:ubuntu-toolchain-r/test && \
    apt-get -qq upgrade libstdc++6 


RUN wget https://storage.googleapis.com/swift-tensorflow-artifacts/releases/v0.4/rc2/swift-tensorflow-RELEASE-0.4-cuda10.0-cudnn7-ubuntu18.04.tar.gz && \
    tar xvzf swift-tensorflow-RELEASE-0.4-cuda10.0-cudnn7-ubuntu18.04.tar.gz   && \
    rm swift-tensorflow-RELEASE-0.4-cuda10.0-cudnn7-ubuntu18.04.tar.gz        && \
    export PATH=$(path)/usr/bin:"${PATH}"
