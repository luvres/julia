FROM julia:1.8.3
MAINTAINER Leonardo Loures <luvres@hotmail.com>

ENV PATH="/root/miniconda3/bin:${PATH}"

RUN \
  curl -LO https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
  && bash Miniconda3-latest-Linux-x86_64.sh -b \
  && rm -f Miniconda3-latest-Linux-x86_64.sh \
  \
  && pip --no-cache-dir install --upgrade pip \
  && pip --no-cache-dir install jupyterlab \
  \
  && julia -e 'using Pkg ; Pkg.add("IJulia")'
