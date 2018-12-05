FROM agrozyme/alpine:edge
COPY source /

RUN set -euxo pipefail \
  && chmod +x /usr/local/bin/*.sh \
  && apk add --no-cache mongodb \
  && mkdir -p /var/log/mongodb \
  && ln -sf /dev/stdout /var/log/mongodb/mongod.log 

EXPOSE 27017 27018 27019 28017
CMD ["agrozyme.mongodb.command.sh"]
