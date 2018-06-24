FROM ubuntu

LABEL maintainer="trylife@qq.com"
LABEL version="latest"

# wget: bad address 'docs-aliyun.cn-hangzhou.oss.aliyun-inc.com'
# sh: ossutil: not found
# alpine 执行不了golang编译的二进制

COPY ossutil /bin/
COPY ossutil.sh /bin/

RUN chmod +x /bin/ossutil.sh \
    && chmod 755 /bin/ossutil.sh \
    && chmod +x /bin/ossutil \
    && chmod 755 /bin/ossutil

USER root


# ENTRYPOINT /bin/sh /bin/ossutil.sh


