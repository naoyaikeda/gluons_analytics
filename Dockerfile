FROM jupyter/base-notebook:latest
LABEL maintainer="Naoya Ikeda <n_ikeda@hotmail.com>"
USER root
RUN echo "now building..." && \
    cd /root && \
    apt update && \
    apt install -y build-essential && \
    conda install -y python=3.6 numpy=1.14.* seaborn matplotlib pandas hdf5 mxnet && \
    conda install -c conda-forge harfbuzz fbprophet && \
    pip install gluonts