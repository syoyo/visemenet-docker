FROM nvidia/cuda:8.0-cudnn5-runtime-ubuntu16.04
LABEL maintainer "Syoyo Fujita <syoyo@lighttransport.com>"

RUN apt-get update && apt-get install -y \
  git \
  python3-pip

RUN pip3 install numpy scipy python_speech_features matplotlib
RUN pip3 install tensorflow-gpu==1.1.0
