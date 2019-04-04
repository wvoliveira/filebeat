FROM docker.elastic.co/logstash/logstash-oss:6.6.0

COPY conf/logstash.conf /usr/share/logstash/pipeline/logstash.conf

HEALTHCHECK --interval=15s --timeout=3s --start-period=15s --retries=3 \
    CMD curl -s http://127.0.0.1:9600/ || exit 1
