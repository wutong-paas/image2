# image2
通过github action将国内无法访问的镜像转到dockerhub。
## 镜像转换
国内不可访问镜像通过github action转换。

我需要做的是：
1. 创建 release；
2. 填写一个新的 Tag 号，例如 `iodp-v0.0.1`；（Tag 号没有明确意义，只为创建 release 触发 GitHub Action）
3. 填写完整的外网镜像名称， 例如 `k8s.gcr.io/kube-apiserver:v1.24.0`。
须知：
- 最后编译出来的镜像地址是 `iodp/k8s.gcr.io_kube-apiserver:v1.24.0` 和 `registry.cn-zhangzhou.aliyuncs.com/iodp/k8s.gcr.io_kube-apiserver:v1.24.0`；
- 你可能注意到了，对了，转换处理会将原镜像的 `/` 全部替换成 `_`。
## 编译镜像
我需要做的是：
1. 修改仓库的Dockerfile文件，写入新的内容；
2. 提交，提交信息为编译的镜像名称。（提交信息为编译的镜像名称，切记！）
须知：
- 如果提交信息为 `alpine`，那么最后编译出来的镜像地址是 `iodp/alpine` 和 `registry.cn-zhangzhou.aliyuncs.com/iodp/alpine`；
- 提交信息可以附带tag，例如：`alpine:latest`。
