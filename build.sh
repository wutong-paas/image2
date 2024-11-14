#! /bin/bash

export IMAGE_URL=nacos/nacos-server:2.0.3

IMAGE_REGISTRY=${WUTONG_REGISTRY:-'swr.cn-southwest-2.myhuaweicloud.com/wutong'}

# 截取镜像名称以及版本，保留最后一个 "/" 后面的内容
IMAGE_NAME=${IMAGE_URL##*/}


docker buildx use swrbuilder || docker buildx create --use --name swrbuilder --driver docker-container --driver-opt image=swr.cn-southwest-2.myhuaweicloud.com/wutong/buildkit:stable
docker buildx build --platform linux/amd64,linux/arm64 --build-arg IMAGE_URL=${IMAGE_URL} --push -t ${IMAGE_REGISTRY}/${IMAGE_NAME} -f Dockerfile.local . 