FROM alpine:3.9

LABEL filebeat="true"

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

RUN apk add -U tzdata \
  && cp /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime \
  && echo "America/Sao_Paulo" >  /etc/timezone \
  && apk del tzdata \
  && rm -rf /var/cache/apk/*

ENTRYPOINT ["/entrypoint.sh"]

HEALTHCHECK --interval=5s --timeout=3s --start-period=5s --retries=5 \
  CMD ps aux | grep '[e]ntrypoint.sh' || exit 1
