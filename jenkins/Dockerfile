
FROM jenkins/jenkins:lts

ENV PYTHON_VERSION 3.7.5

USER root
RUN apt update
RUN apt install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev

#
# Manually building Python 3.7.
# https://linuxize.com/post/how-to-install-python-3-7-on-ubuntu-18-04/
#
RUN curl -O https://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tar.xz && \
    tar -xf Python-$PYTHON_VERSION.tar.xz
RUN cd Python-$PYTHON_VERSION && \
     ./configure --enable-optimizations --enable-loadable-sqlite-extensions && \
    make -j $(nproc) && \
    make altinstall

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python3.7 get-pip.py
RUN pip3 install virtualenv
RUN virtualenv /opt/venvs/jenkins --python=$(which python3.7)
RUN bash -c "source /opt/venvs/jenkins/bin/activate"

USER jenkins

