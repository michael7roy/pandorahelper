# 使用指定的镜像作为基础镜像
FROM q11391/pandora-helper

# 设置容器内的工作目录
WORKDIR /app

# 将本地的数据目录挂载到容器内
COPY ./data /app/data

# 暴露容器内的端口
EXPOSE 9000

# 不需要显式声明 CMD，基础镜像中的默认命令会被继承
CMD ["/app/PandoraHelper"]
