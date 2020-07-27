FROM tensorflow/tensorflow:0.11.0
LABEL maintainer="tzhsn.huang@gmail.com"

# install git
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    git && \
    apt-get autoclean && \
    apt-get clean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*

# install dependencies
ENV PYTHON_VERSION 2.7
RUN pip2 install -U \
    numpy==1.11.2 \
    Pillow==3.4.2 \
    scipy==0.18.1 \
    moviepy==1.0.2

# clone and setup the repository
# setup working directory and default command
RUN git clone --progress https://github.com/thhuang/fast-style-transfer.git /repo && \
    cd /repo && \
    mkdir styles && mv input/*.ckpt styles/ && \
    git reset --hard a0e8b5848b858cf38c6a0be8186abd729c3c3b95 && \
    mv evaluate.py run.py && \
    rm -rf examples .git
ENV PYTHONPATH /repo/src

# setup working directory and default command
WORKDIR /app
CMD python /repo/run.py --checkpoint /repo/styles/wave.ckpt --in-path /repo/input/taipei.jpg --out-path taipei-wave.png
