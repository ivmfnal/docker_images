#!/bin/bash

name=$1
centos=${2:-7}

docker build --rm --build-arg CENTOS_VER=$centos -t ivmfnal/${name}_centos_${centos} $name

