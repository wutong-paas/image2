# image-ops
通过github action将国内无法访问的镜像转到dockerhub。
## 镜像转换
国内不可访问镜像通过github action转换。

我需要做的是：
1. 创建release；
2. 填写一个新的tag编号；
3. 填写完整的外网镜像名称。
## 编译镜像
我需要做的是：
1. 修改仓库的Dockerfile文件，写入新的内容；
2. 提交，提交信息为编译的镜像名称即可。
须知：
- 如果提交信息为`alpine`，那么最后编译出来的镜像地址是`iodp/alpine`；
- 提交信息可以附带tag，例如：`alpine:latest`
