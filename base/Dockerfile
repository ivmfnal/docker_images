ARG CENTOS_VER
FROM centos:${CENTOS_VER}

WORKDIR /tmp

RUN yum upgrade -y && \
    yum clean all && \
    rm -rf /var/cache/yum

RUN yum install -y epel-release.noarch gcc openssl-devel.x86_64 && \
    yum clean all && \
    rm -rf /var/cache/yum

RUN echo 2

RUN yum -y install https://repo.ius.io/ius-release-el7.rpm &&\
    yum install -y python36u-pip libaio python36-devel.x86_64 python36-m2crypto libnsl.x86_64 memcached patch.x86_64 && \
    yum clean all && \
    rm -rf /var/cache/yum

RUN yum install -y git less curl make \
    && yum clean all \
    && rm -rf /var/cache/yum

