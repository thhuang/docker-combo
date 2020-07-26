FROM tensorflow/tensorflow:0.11.0
LABEL maintainer="tzhsn.huang@gmail.com"

# install git
RUN apt-get update
RUN apt-get install -y --no-install-recommends \
    git && \
    apt-get autoclean && \
    apt-get clean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*

# install dependencies
ENV PYTHON_VERSION 2.7
RUN pip2 install \
    numpy==1.11.2 \
    Pillow==3.4.2 \
    scipy==0.18.1 \
    moviepy==1.0.2

# clone and setup the repository
RUN git clone --progress https://github.com/thhuang/fast-style-transfer.git /app/repo
WORKDIR /app/repo
RUN git reset --hard a0e8b5848b858cf38c6a0be8186abd729c3c3b95
RUN mkdir /app/styles && mv input/*.ckpt /app/styles/
RUN mv evaluate.py /app/run.py
ENV PYTHONPATH /app/repo/src

# setup workspace and default command
WORKDIR /app
CMD python run.py --checkpoint styles/wave.ckpt --in-path input/pier.jpg --out-path output/pier-wave.png
