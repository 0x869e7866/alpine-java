# AlpineLinux with a glibc-2.27-r0 and Oracle Java 8
FROM anapsix/alpine-java

MAINTAINER Corbin <peixiaobin316@gmail.com>

# set alpine timezone
RUN apk update && \
    apk add --no-cache && \
    apk add tree tzdata && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone

# EOF