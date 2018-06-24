FROM ubuntu

# wget: bad address 'docs-aliyun.cn-hangzhou.oss.aliyun-inc.com'
# sh: ossutil: not found
# alpine 执行不了golang编译的二进制

# COPY ossutil /bin/
COPY test.sh /bin/

RUN chmod +x /bin/test.sh \
    && chmod 755 /bin/test.sh

USER root


CMD [ "sh", "-c","/bin/test.sh" ]


