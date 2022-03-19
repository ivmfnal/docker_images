ARG CENTOS_VER
FROM ivmfnal/base_centos_${CENTOS_VER}

WORKDIR /tmp

RUN curl -o m.sh -L https://github.com/conda-forge/miniforge/releases/download/4.11.0-4/Miniforge3-4.11.0-4-Linux-x86_64.sh && \
    bash m.sh -b -p /opt/conda && \
    rm -f m.sh

RUN source /opt/conda/etc/profile.d/conda.sh && \
    conda activate && \
    conda update -n base conda && \
    pip install --upgrade pip && \
    pip install --upgrade setuptools && \
    pip install webpie pyyaml pyjwt requests && \
    conda install -c conda-forge psycopg2 && \
    conda install -c conda-forge openldap python-ldap && \
    rm -rf ~/.chache/pip

RUN rm -rf /usr/lib/python3.6/site-packages/ipaddress*

RUN ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh
COPY .bashrc /root

