FROM nimbix/ubuntu-desktop
ENV LANG C.UTF-8
ENV SU2_VERSION=7.1.1
ENV BUILD_DIR=/tmp/build
RUN apt-get update && apt-get install -y \
    python3 \
    pkg-config \
    python3-pip \
    git \
    vim \
    build-essential \
    python3-numpy \
    python3-scipy \
    python3-mpi4py \
    swig \
    libopenmpi-dev \
    openmpi-bin \
    meson \
    ccache \
    gnuplot \
    python3-matplotlib \
    paraview \
 && rm -rf /var/lib/apt/lists/* \
 && update-alternatives --install /usr/bin/python python /usr/bin/python3 10 \
 && /usr/sbin/update-ccache-symlinks \
 && echo 'export PATH="/usr/lib/ccache:$PATH"' | tee -a ~/.bashrc 
RUN mkdir -p ${BUILD_DIR}/su2-build
WORKDIR ${BUILD_DIR}/su2-build
RUN git clone https://github.com/su2code/SU2.git
WORKDIR ${BUILD_DIR}/su2-build/SU2
RUN ./meson.py build -Denable-pywrapper=true 
#RUN ./meson.py build --reconfigure -Denable-autodiff=true 
#RUN ./meson.py build --reconfigure -Denable-directdiff=true
RUN ./ninja -C build install
ENV SU2_RUN=/usr/local/bin
ENV SU2_HOME=/tmp/build/su2-build/SU2
ENV PATH=$PATH:$SU2_RUN
ENV PYTHONPATH=$PYTHONPATH:$SU2_RUN

