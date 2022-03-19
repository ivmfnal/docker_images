#!/bin/bash 

name=$1
centos=${2:-7}
tag=${3:-latest}

docker push ivmfnal/${name}_centos_${centos}:${tag}

