# image2
Dcoker 镜像工具：国外镜像转换；编译 Dockerfile
## 镜像转换

国内不可访问镜像通过 GitHub Action 转换。
我需要做的是：
1. 创建 release；
2. 填写一个新的 Tag 号，例如 `v0.0.1`；（Tag 号没有明确意义，只为创建 release 触发 GitHub Action）
3. 填写完整的外网镜像名称， 例如 `k8s.gcr.io/kube-apiserver:v1.24.0`。
> 须知：最后编译出来的镜像地址只会保留镜像名称，不会保留域名或命名空间。  
> 上例转换出来的镜像是 `srcio/k8s.gcr.io_kube-apiserver:v1.24.0` 和 `registry.cn-zhangzhou.aliyuncs.com/srcio/kube-apiserver:v1.24.0`。
## 编译镜像
编写本仓库下的 `Dockerfile`，提交之后使用 GitHub Action 编译镜像。
我需要做的是：
1. 修改仓库的 Dockerfile 文件，写入新的内容；
2. 提交，提交信息为编译的镜像名称。（提交信息为编译的镜像名称，切记！）
须知：
- 如果提交信息为 `alpine`，那么最后编译出来的镜像地址是 `srcio/alpine` 和 `registry.cn-zhangzhou.aliyuncs.com/srcio/alpine`；
- 提交信息可以附带tag，例如：`alpine:latest`。
