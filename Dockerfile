FROM julia:1.9.2
MAINTAINER Leonardo Loures <luvres@hotmail.com>

ENV PATH="/opt/conda/bin:${PATH}"

RUN \
  curl -LO https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
  && bash Miniconda3-latest-Linux-x86_64.sh -b -p /opt/conda \
  && rm -f Miniconda3-latest-Linux-x86_64.sh \
  \
  && pip --no-cache-dir install --upgrade pip \
  && pip --no-cache-dir install jupyterlab
